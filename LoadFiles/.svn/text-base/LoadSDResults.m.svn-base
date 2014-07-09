% load Sorting results

function LoadSDResults
clear all
close all
clc
% set addr
addr.ROOT = cd; 
addr.RES = '/home/jaky/Scrivania/Neuwalk/WorkDir/Ris/Sorting/r238'; 

% set infos
info.rat = 'r238';
info.name = 'r238_TM_10Dic'; 

% define experiment 
iBlock = 1; iTrial = 3; 
% check eventual cuts
cut = checkGoodTime(info,iBlock,iTrial); 
% define channel
iCh = 7; 
% load 
cd(addr.RES)
load(['SR_',info.name,'_iB',int2str(iBlock),'_iT_',int2str(iTrial),'_iCH_',int2str(iCh)],'handles') 
cd(addr.ROOT)
% init sync, it is RawTime if there are no cuts
sync = handles.RawTime; 
% update sync with cuts
if ~isnan(cut(1)), sync(1) = cut(1); end
if ~isnan(cut(2)), sync(2) = cut(2); end

% plot raster 
raster = cell(numel(handles.classM),1); 
bias = 0; 
for iCl = 1:numel(handles.classM)
    raster{iCl} = evalR(handles,sync(1),iCl);    
    hold on
    plot(sync(1)+handles.tFR,bias+iCl+handles.FR(:,iCl),'b')
    plot(raster{iCl},bias+iCl,'b.')
    bias = bias + 10; 
end
% ylim([0 25])
xlim(sync)

return


function cut = checkGoodTime(data,iBlock,iTrial)

% define a default option
cut = [NaN,NaN]; 

% r238 
if strcmp(data.rat,'r238')
   if strcmp(data.name,'r238_TM_10Dic')        
        if (iBlock == 1 && iTrial == 3),  cut = [NaN,273]; end
        if (iBlock == 1 && iTrial == 6),  cut = [NaN,438]; end
        if (iBlock == 1 && iTrial == 9),  cut = [800,835]; end
        if (iBlock == 1 && iTrial == 11), cut = [NaN,1100]; end
   elseif strcmp(data.name,'r238_Lad_19Dic')      
   elseif strcmp(data.name,'r238_2CRW_16Dic')      
   elseif strcmp(data.name,'r238_RA_19Dic')      
        if (iBlock == 1 && iTrial == 5),  cut = [289,NaN]; end
        if (iBlock == 1 && iTrial == 6),  cut = [347,NaN]; end
        if (iBlock == 1 && iTrial == 9),  cut = [536,542]; end
   end
   
elseif strcmp(data.rat,'r239')
% r239
    if strcmp(data.name,'r239_tm_29Nov')       
        if (iBlock == 1 && iTrial == 11),  cut = [NaN,1500]; end
        if (iBlock == 1 && iTrial == 13),  cut = [1660,NaN]; end
    elseif strcmp(data.name,'r239_ra_9Dic')    
        if (iBlock == 2 && iTrial == 28),  cut = [1268,NaN]; end
    elseif strcmp(data.name,'r239_la_30Nov')     
        if (iBlock == 1 && iTrial == 2),   cut = [NaN,323]; end
        if (iBlock == 1 && iTrial == 3),   cut = [NaN,401]; end
        if (iBlock == 1 && iTrial == 4),   cut = [NaN,443]; end
        if (iBlock == 1 && iTrial == 5),   cut = [486,491]; end
        if (iBlock == 1 && iTrial == 6),   cut = [NaN,535]; end
        if (iBlock == 1 && iTrial == 7),   cut = [579,588]; end
        if (iBlock == 1 && iTrial == 14),  cut = [NaN,1465]; end
        if (iBlock == 1 && iTrial == 15),  cut = [NaN,1522]; end
    elseif strcmp(data.name,'r239_2cra_16Dec')    
        if (iBlock == 1 && iTrial == 20),  cut = [NaN,1706]; end
        if (iBlock == 2 && iTrial == 40),  cut = [441,NaN]; end
    elseif strcmp(data.name,'r239_la_1Dic')
        if (iBlock == 1 && iTrial == 23),  cut = [NaN,1571]; end
        if (iBlock == 1 && iTrial == 27),  cut = [1768,1775]; end
    elseif strcmp(data.name,'r239_tm_10Dec')
        if (iBlock == 1 && iTrial == 5),  cut = [810,839]; end
        if (iBlock == 1 && iTrial == 7),  cut = [1220,NaN]; end
        if (iBlock == 1 && iTrial == 8),  cut = [1300,NaN]; end
    end
    
elseif strcmp(data.rat,'r240')
% 240     
    if strcmp(data.name,'r240_tm_9Dic')        
    elseif strcmp(data.name,'r240_2cra_24Nov')         
    elseif strcmp(data.name,'r240_la_30Nov')         
    elseif strcmp(data.name,'r240_ra_08Dec')         
    elseif strcmp(data.name,'r240_la_22Nov')         
    elseif strcmp(data.name,'r240_tm_26Nov')         
    end

elseif strcmp(data.rat,'r327')
% 327
    if strcmp(data.name,'r327_BipTM_2Jul')         
    elseif strcmp(data.name,'r327_BipTM_9Jul')         
    elseif strcmp(data.name,'r327_BipTM_14Jul')         
    end
    
elseif strcmp(data.rat,'r330')
% 330
    if strcmp(data.name,'r330_BipCRW_19Jul')         
    elseif strcmp(data.name,'r330_QCRW_16Jul')         
        if (iBlock == 1 && iTrial == 13),  cut = [NaN,716]; end
    elseif strcmp(data.name,'r330_BipTM_14Jul')         
    elseif strcmp(data.name,'r330_BipTM_9Jul')         
    elseif strcmp(data.name,'r330_Qlad_6Jul')         
    elseif strcmp(data.name,'r330_QstairsINI_18Jul')         
    end

elseif strcmp(data.rat,'r332')
% 332
    if strcmp(data.name,'r332_BipTM_14Jul')         
    elseif strcmp(data.name,'r332_BipTM_2Jul')         
    elseif strcmp(data.name,'r332_BipTM_9Jul')         
    end
end

return




function raster = evalR(handles,bias,iCl)

ind = handles.classM{iCl}; 
times_sec = 1000\handles.cluster_class(ind,2); 
raster = bias + times_sec;

return
