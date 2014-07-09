function data = evalData(data,EXs,TOT_INFOs,ADDRESSES,ROOT)
   
% get infos
filenameroot = data.name; 
iFNR = strcmp(EXs(:,1),filenameroot);  % identifico di quale EX si tratta
FNR =  EXs{iFNR,2}; 
ex =   EXs{iFNR,3};  
iINFO = strcmp(TOT_INFOs(:,1),FNR);  % identifico i blocchi di esercizi utili
INFOs = TOT_INFOs{iINFO,2}; 
iADDRESS = strcmp(ADDRESSES(:,1),ex);  % identifico la behaviour
data.folder = ADDRESSES{iADDRESS,2};    

% set trials as matfiles inside the specific folder            
cd(data.folder)
  TRIALs = dir([FNR,'*_v_*.mat']);  iTRIALs = find_v_(TRIALs,FNR); 
cd(ROOT)  
% got INFOs TRIALs and iTRIALs, now I run across Blocks defined by the INFOs to get trials defined by *TRIAL*
for iB = 1:size(INFOs,1)
   itrials_ = find(iTRIALs >= INFOs{iB,2}(1) &...
                  iTRIALs <= INFOs{iB,2}(2));
   itrials = iTRIALs(itrials_);
   trials = cell(numel(itrials_),1); 
   cont = 1; 
   for iT = itrials_'
       trials{cont} = TRIALs(iT).name; 
       cont = cont+1;
   end        
   % prepare output
   data.block{iB}.info = INFOs(iB,:);        
   data.block{iB}.iTrialGiven = itrials; 
   data.block{iB}.SzTrialGiven = length(data.block{iB}.iTrialGiven);
   data.block{iB}.raw= trials; 
   data.block{iB}.akg = {}; % DA FARE!!   
end
end

% get right trial numbers
function iTRIALs = find_v_(TRIALs, FNR)
    iTRIALs = zeros(size(TRIALs),1);     
    for iTr = 1:numel(TRIALs)
        if 0 % old!!
        [token1, remain1] = strtok(TRIALs(iTr).name,FNR);
        [token2, remain2] = strtok(remain1(2:end),'.mat');
        iTRIALs(iTr) = str2double(token2); 
        end
        [token1, remain1] = strtok(fliplr(TRIALs(iTr).name),'_');
        [token2, remain2] = strtok(fliplr(token1),'.'); 
        iTRIALs(iTr) = str2double(token2); 
    end
end
   