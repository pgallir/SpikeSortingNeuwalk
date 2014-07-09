function rec = rec_load(addr,rec,data,iBlock,iTrial)

% remove fields to fit
TO_REMOVE = {'Filt', 'Raw', 'tRaw', 'ANA','tANA',... 
              'KIN','Angles','tKIN','GAIT'};
for iR = 1:numel(TO_REMOVE)
    try
        rec = rmfield(rec,TO_REMOVE{iR});
    catch
        warning('rec:fieldRem','if I cannot remove this field they do not exist. fine to me!! ') 
    end    
end

% load data
cd(data.folder) % to load data
%
RAW_temp  = load(data.block{iBlock}.raw{iTrial});       
disp(data.block{iBlock}.raw{iTrial})
field_temp = fieldnames(RAW_temp); 
eval(['rec.Raw = RAW_temp.',field_temp{1},'.rawSig;']);         
eval(['rec.RawTime = RAW_temp.',field_temp{1},'.times;']);         
rec.Fc_R = size(rec.Raw,1)/diff(rec.RawTime); %Hz ca 12000        
rec.tRaw = rec.RawTime(1):1/rec.Fc_R:rec.RawTime(2);
rec.tRaw = rec.tRaw(1:size(rec.Raw,1)); 
rec.Filt = rec.Raw; 
%
cd(addr.SRC)
rec.Fc_A = 2000; %Hz
rec.Fc_K = 200; %Hz
ANA_temp =  importdata([data.block{iBlock}.akg{iTrial},'ANA.csv']); 
rec.ANA = ANA_temp.data;    
KIN_temp =  importdata([data.block{iBlock}.akg{iTrial},'KIN.csv']);
rec.KIN = KIN_temp.data;
GAIT_temp = importdata([data.block{iBlock}.akg{iTrial},'GAIT.csv']);
rec.GAIT = GaitTimeExtract(GAIT_temp);           

% %% %% %% %
% CONTROLLARE POSSIBILI BACHEROZZI!!!!
TrIaL = data.block{iBlock}.iTrialGiven(iTrial) - ... 
        (data.block{iBlock}.info{2}(1)-1);   % get the right trial of this block for vicon sync
rec = MatR(rec,TrIaL);         
% %% %% %% %
rec.Angles = Kin2Angles(rec.KIN(:,2:end)); 
rec.tANA = rec.tANA(1:size(rec.ANA,1)); 
rec.tKIN = rec.tKIN(1:size(rec.KIN,1)); 

