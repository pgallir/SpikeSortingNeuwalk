function GTnew = loadGoodTime(data,GT)


GTnew = GT; % AVENDO FEDE NELLA DEA BENDATA!!

return

%% store rat and experiments goodtimes

% r238 
if strcmp(data.rat,'r238')
   if strcmp(data.name,'r238_TM_10Dic')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT; 
        iBlock = 1; iTrial = 3;  cut = [NaN,273]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 6;  cut = [NaN,438]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 9;  cut = [800,835]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 11; cut = [NaN,1100]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
   elseif strcmp(data.name,'r238_Lad_19Dic')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT; 
   elseif strcmp(data.name,'r238_2CRW_16Dic')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT; 
   elseif strcmp(data.name,'r238_RA_19Dic')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT; 
        iBlock = 1; iTrial = 5;  cut = [289,NaN]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 6;  cut = [347,NaN]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 9;  cut = [536,542]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
   end
elseif strcmp(data.rat,'r239')
% r239
    if strcmp(data.name,'r239_tm_29Nov')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT; 
        iBlock = 1; iTrial = 11;  cut = [NaN,1500]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 13;  cut = [1660,NaN]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
    elseif strcmp(data.name,'r239_ra_9Dic')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT; 
        iBlock = 2; iTrial = 28;  cut = [1268,NaN]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
    elseif strcmp(data.name,'r239_la_30Nov')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT; 
        iBlock = 1; iTrial = 2;   cut = [NaN,323]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 3;   cut = [NaN,401]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 4;   cut = [NaN,443]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 5;   cut = [486,491]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 6;   cut = [NaN,535]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 7;   cut = [579,588]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 14;  cut = [NaN,1465]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 15;  cut = [NaN,1522]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
    elseif strcmp(data.name,'r239_2cra_16Dec')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT; 
        iBlock = 1; iTrial = 20;  cut = [NaN,1706]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 2; iTrial = 40;  cut = [441,NaN]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
    elseif strcmp(data.name,'r239_la_1Dic')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT; 
        iBlock = 1; iTrial = 23;  cut = [NaN,1571]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 27;  cut = [1768,1775]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
    elseif strcmp(data.name,'r239_tm_10Dec')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT; 
        iBlock = 1; iTrial = 5;  cut = [810,839]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 7;  cut = [1220,NaN]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
        iBlock = 1; iTrial = 8;  cut = [1300,NaN]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
    end
    
elseif strcmp(data.rat,'r240')
% 240     
    if strcmp(data.name,'r240_tm_9Dic')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r240_2cra_24Nov')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r240_la_30Nov')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r240_ra_08Dec')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r240_la_22Nov')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r240_tm_26Nov')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    end

elseif strcmp(data.rat,'r327')
% 327
    if strcmp(data.name,'r327_BipTM_2Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r327_BipTM_9Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r327_BipTM_14Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    end
    
elseif strcmp(data.rat,'r330')
% 330     
    if strcmp(data.name,'')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r330_QCRW_16Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
        iBlock = 1; iTrial = 13;  cut = [NaN,716]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
    elseif strcmp(data.name,'r330_BipTM_14Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r330_BipTM_9Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r330_Qlad_6Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r330_QstairsINI_18Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r330_QRW_12Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
        iBlock = 1; iTrial = 9;  cut = [NaN,290]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);
    elseif strcmp(data.name,'r330_QRW_16Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r330_QRWINI_18Jul')    
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r330_BipCRW_19Jul')            
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    end

elseif strcmp(data.rat,'r332')
% 332
    if strcmp(data.name,'r332_BipTM_14Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r332_BipTM_2Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r332_BipTM_9Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r332_BipCRW_19Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;
    elseif strcmp(data.name,'r332_BipRW_19Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;          
    elseif strcmp(data.name,'r332_BipRWINI_19Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;  
    elseif strcmp(data.name,'r332_BipSTAIRS_4Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;  
    elseif strcmp(data.name,'r332_BipTM_2Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;          
    elseif strcmp(data.name,'r332_BipTM_9Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;  
    elseif strcmp(data.name,'r332_BipTM_14Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;          
    elseif strcmp(data.name,'r332_QCRW45_16Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;  
    elseif strcmp(data.name,'r332_QCRW90_16Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT; 
        iBlock = 2; iTrial = 38;  cut = [NaN,290]; GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,cut);        
    elseif strcmp(data.name,'r332_Qlad_6Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;  
    elseif strcmp(data.name,'r332_QstairsINI_18Jul')
        rat = data.rat; exp = data.name; GoodTime.(rat).(exp) = GT;          
        
    end
end

%% return right GT
GTnew = GoodTime.(data.rat).(data.name); 
return

function GoodTime = setCut(GoodTime,data,rat,exp,iBlock,iTrial,CUT)

GoodTime.(rat).(exp){iBlock}... 
                  (find(data.block{iBlock}.iTrialGiven == iTrial),:) = CUT; 
return
