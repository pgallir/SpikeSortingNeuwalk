function h = elab_signal_iCH(data,rec,addr,iTrial,iCH)

disp(iCH)  
sig = rec.Filt(:,iCH); 

%%          SORTING
filename = [data.name,'_iT_',num2str(iTrial),'_iCH_',num2str(iCH)];           

cd(addr.SRC)
h = struct;
h.file = filename; 
h.addr = addr; 
h.Fc = rec.Fc_R/1000; % kHz
h.sig = sig; 
h.RANGE_BP = rec.IND;
h.tRaw = rec.tRaw;              
h = set_param_SPC(h);                              

%%   1      Detection
cd([addr.WAVECLUS]), cd('Batch_files') % find the function Get_spikes_JR2001
h.Dtype = 'Nenadic'; h = Get_spikes_JR2011(h);    
cd(addr.SRC)
h.class = {}; 
h.ipermut = []; 
h.clu = []; 
h.tree = []; 
h.temp = []; 
h.EMPTY = ~(~isempty(h.spikes) && size(h.spikes,1) > 2*h.par.tot_inputs); 

if ~h.EMPTY

%%     2    try to denoise spikes 
%     x = reshape(h.spikes',numel(h.spikes),1);
%     xd = wden(x,'minimaxi','s','sln',1,'sym8');
%     h.spikes = reshape(xd,size(h.spikes,2),size(h.spikes,1))';
%     clear x xd

%%     3    Clustering                 
    cd([addr.WAVECLUS]), cd('Batch_files') % find the function Do_clustering_JR2001
    h = Do_clustering_JR2011(h);    
    cd(addr.SRC)

 
%%     3 bis    If the sorter is stupid and classify together

    class_ = h.class; 
    classT_ = h.classT; 
    h.class=cell(1000,1); h.classT=cell(1000,1);
    % analyze dataset
    kk_=1; 
    for iCL = 1:numel(class_)
        [~, im_]=max(abs(classT_{iCL}'));
        dd=zeros(size(classT_{iCL},1));
        for iT=1:size(classT_{iCL},1)
            dd(iT)=classT_{iCL}(iT,im_(iT));
        end
        %
        pos=find(dd>0);         
        if ~isempty(pos)
           h.class{kk_}=class_{iCL}(pos); 
           h.classT{kk_}=classT_{iCL}(pos,:); 
           kk_=kk_+1;  
        end
        %
        neg=find(dd<0);     
        if ~isempty(neg)
            h.class{kk_}=class_{iCL}(neg);
            h.classT{kk_}=classT_{iCL}(neg,:); 
           kk_=kk_+1;  
        end
        classT_{iCL};
    end
    
    [Cnrows,Cncols] = cellfun(@size, h.class);
    idx=Cnrows==0&Cncols==0;
    h.class(idx)=[]; 
    h.classT(idx)=[]; 
    
%     keyboard
    
%% 
    
    %eval FR
    cd(addr.BINNING)
    fr = cell(length(h.class),1); 
    t1 = 0;
    t2 = size(rec.Raw,1)/rec.Fc_R;          
    h.FR_TimeWinLength = 0.1; 
    for iCL = 1:length(h.class)
        if ~isempty(h.class{iCL})
            if size(h.classT{iCL},1)>1
                h.SpTemplate.MEAN(iCL,:) = mean(h.classT{iCL});
                h.SpTemplate.STD(iCL,:) = std(h.classT{iCL});
            else
                h.SpTemplate.MEAN(iCL,:) = h.classT{iCL};
                h.SpTemplate.STD(iCL,:) = zeros(size(h.classT{iCL}));
            end
            fr{iCL} = making_bins(h.cluster_class(h.class{iCL},2)./1000,...
                                  0, t2-t1, h.FR_TimeWinLength);                                  
        end
    end
    h.FR = cell2mat(fr'); clear fr; 
    h.tFR =t1:... 
                   h.FR_TimeWinLength:... 
                 t2; 
    

%%     4    DO MERGE CLUSTERS!!
    
    cd(addr.SRC)
    classMtemp = h.class; 
    % analyze dataset
    for iCL = 1: size(h.SpTemplate.MEAN,1)
        for jCL = iCL+1: size(h.SpTemplate.MEAN,1)               
            %
            CROSSVAR=max(xcov(h.SpTemplate.MEAN(jCL,:),h.SpTemplate.MEAN(iCL,:),5,'coeff'));
            ERRs=h.classT{iCL}-repmat(h.SpTemplate.MEAN(iCL,:),size(h.classT{iCL},1),1);
            RMSE_prima=sqrt(sum(ERRs.^2,2));
            %
            ERR_=h.SpTemplate.MEAN(jCL,:)-h.SpTemplate.MEAN(iCL,:);
            RMSE_=sqrt(sum(ERR_.^2));
            if  CROSSVAR>0.99 &&... % era 0.9                    
                RMSE_<=max(RMSE_prima);    
                % iCL e jCL should be merged
                classMtemp{iCL} = [classMtemp{iCL}, classMtemp{jCL}]; 
                classMtemp{jCL} = [];  
% %             CC = corrcoef(h.SpTemplate.MEAN(iCL,:),h.SpTemplate.MEAN(jCL,:)); 
% %             if CC(1,2)>0
% %                 FALSE = zeros(10,1);         
% %                 Ft = zeros(10,1);                     
% %                 Pt = zeros(10,1);                     
% %                 c = 1;    
% %                 for iS = round(size(h.SpTemplate.MEAN,2)/2)-3:round(size(h.SpTemplate.MEAN,2)/2)+4 % interesting part to be tested 
% %                     [Ft(c), Pt(c)] = ttest2(h.spikes(h.class{iCL},iS),... 
% %                                       h.spikes(h.class{jCL},iS));
% %                     c = c+1; 
% %                 end
% %                 FALSE(runmean(Ft,1)>=0.33) = 1; 
% %                 %
% %                 if mean(FALSE(1:c)) < 0.7
% %                     % iCL e jCL should be merged
% %                     classMtemp{iCL} = [classMtemp{iCL}, classMtemp{jCL}]; 
% %                     classMtemp{jCL} = []; 
% %                 end
% %             else
% %                 % iCL e jCL should NOT be merged
% %             end
            end
        end
    end   
    % create classM field
    SIZE_T = 0; 
    cont = 1; 
    for iCont = 1:length(classMtemp)
        if  ~isempty(classMtemp)
            h.classM{cont} = classMtemp{iCont};
            SIZE_T = SIZE_T+numel(h.classM{cont});
            cont = cont+1;
        end
    end

    h.classTM = h.classT; 
    for iCL = 1:length(h.classM)
        if ~isempty(h.classM{iCL})
            if size(h.classM{iCL},1)>1
               h.classTM{iCL} = mean(h.spikes(h.classM{iCL},:)); 
            else
               h.classTM{iCL} = h.spikes(h.classM{iCL},:);  
            end
        else
            h.classTM{iCL} = [];
        end
    end
    
   
    %% eval FR
    cd(addr.BINNING)
    fr = cell(length(h.classM),1); 
    t1 = 0;
    t2 = size(rec.Raw,1)/rec.Fc_R;            
    h.FR_TimeWinLength = 0.1; 
    for iCL = 1:length(h.classM)
         if ~isempty(h.classM{iCL})
            if size(h.classTM{iCL},1)>1
                h.SpTemplate.M.MEAN(iCL,:) = mean(h.classTM{iCL});
                h.SpTemplate.M.STD(iCL,:) = std(h.classTM{iCL});
            else
                h.SpTemplate.M.MEAN(iCL,:) = h.classTM{iCL};
                h.SpTemplate.M.STD(iCL,:) = zeros(size(h.classTM{iCL}));
            end
            fr{iCL} = making_bins(h.cluster_class(h.classM{iCL},2)./1000,...
                                  0, t2-t1, h.FR_TimeWinLength);                                  
         end
    end
    h.MFR = cell2mat(fr'); clear fr;  

    
    h.PERC = SIZE_T/numel(h.index_spk);

else
    warning('Sorting:N_spike',['Ch ', int2str(iCH),' shows spikes than ', int2str(h.par.tot_inputs),' || # = ',int2str(size(h.spikes,1))]);

end







