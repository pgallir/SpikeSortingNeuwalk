function [Blocks,Trials,GoodTime,rec] = setBTGV(addr,data,visualCheck)

%% start up rec structure
rec = struct('Fc_R', [],'Fc_A', [], 'Fc_K', [], 'Filt', [], 'Raw', [], 'tRaw', [],... 
             'ANA', [], 'tANA', [], 'KIN', [], 'Angles', [], 'tKIN', [],... 
             'GAIT', [], 'vicon', []);

%% change Blocks, Trials and CHs % set unique vicon field
cd(data.folder) % to load data
Blocks = 1:numel(data.block);
Trials = cell(numel(data.block),1); 
GoodTime = cell(numel(data.block),1); 
for iB = Blocks
    if ~isempty(data.block{iB})
        Trials{iB} = 1:length(data.block{iB}.iTrialGiven); 
        GoodTime{iB} = NaN(length(data.block{iB}.iTrialGiven),2);
    else
        Trials{iB} = []; 
        GoodTime{iB} = [];         
    end        
end

cd(addr.LOADF)
%
if ~visualCheck
   GoodTime = loadGoodTime(data,GoodTime); 
end
cd(addr.SRC)
