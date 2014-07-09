% do the preprocessing steps
function [rec] = preprocess_rec(addr,data,rec,iBlock,iTrial,GoodTime,visualCheck)

 % load data
try
    rec = rec_load(addr,rec,data,iBlock,iTrial);            
catch 
    warning('load:MissingStuff','only neural data. No ANA/KIN/vicon available')
    % little hack 
    cd(data.folder) % to load data
    RAW_temp  = load(data.block{iBlock}.raw{iTrial});       
    disp(data.block{iBlock}.raw{iTrial})
    field_temp = fieldnames(RAW_temp); 
    eval(['rec.Raw = RAW_temp.',field_temp{1},'.rawSig;']);    
    eval(['rec.RawTime = RAW_temp.',field_temp{1},'.times;']); 
    rec.Filt = rec.Raw;
    rec.Fc_R = size(rec.Raw,1)/diff(rec.RawTime); %Hz ca 12000        
    rec.Fc_A = 2000; %Hz
    rec.Fc_K = 200; %Hz
    rec.tRaw = rec.RawTime(1):1/rec.Fc_R:rec.RawTime(2);
    rec.tRaw = rec.tRaw(1:size(rec.Raw,1)); 
    rec.Angles = cell(2,1); rec.Angles{1} = []; rec.Angles{2} = [];             
    cd(addr.SRC)
    % end of little hack
end       
% cut signal
rec = cutRawSig(rec,GoodTime{iBlock}(iTrial,1),GoodTime{iBlock}(iTrial,2));       
rec.IND = [];  % need it empty (?)
% bandpass filter % have you done it yet?
[b,a]=butter(4,2.*[500 5000]./rec.Fc_R);            
for iCH = 1:32    
    rec.Filt(:,iCH) = filtfilt(b,a,rec.Raw(:,iCH));            
end                
% decoupling from average
rec = filtRawSig(rec);     
%

if  visualCheck
    figure('Name',[data.name,'_Block_',int2str(iBlock),'_Trial_',int2str(iTrial)])
    subplot(2,1,1)
    plot(rec.tRaw,rec.Raw)
    ylim([-5,5].*1e-4)
    xlim([rec.tRaw(1),rec.tRaw(end)])
    subplot(2,1,2)
    plot(rec.tRaw,rec.Filt)
    ylim([-2.5,2.5].*1e-4)
    xlim([rec.tRaw(1),rec.tRaw(end)])
    pause
    close
end
