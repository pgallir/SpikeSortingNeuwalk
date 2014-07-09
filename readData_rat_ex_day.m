function readData_rat_ex_day(visualCheck,rat,name)

% visualCheck = 0; sort  data
% visualCheck = 1; check data

%% set addr 
[str,trash,trash]=computer;
switch str    
    case {'PCWIN','PCWIN64'}    
        warning('NotReady:TODO','Da sviluppare ancora!')
   
    otherwise  %(GLNX86, GLNXA64, GLNXI64 , MAC, MACI should be *nix)
        [trash,hwaddr] = system('ifconfig  | grep ''HWaddr'' | grep -v ''127.0.0.1'' | awk ''{print $5}'''); 
end

if ~isempty(regexp(hwaddr,'00:26:b9:21:08:36','ONCE'))
   % laptop JR
   user = 'JR'; 
elseif ~isempty(regexp(hwaddr,'f0:4d:a2:dd:77:88','ONCE'))
   user = 'JR-pc-lab';  
end
%
addr.info = 'change addr to change needed paths';     
addr = set_addr(addr,user); 

%% load data information 
cd(addr.LOADF)
% load data struct
data.name = name; % eval(['data = load_data_',name,'(data,addr,user);']); 
data.rat = ['r',int2str(rat)];
data = load_data(rat,data,addr);
% set Blocks Trials GoodTime and Vicon
[Blocks,Trials,GoodTime,rec] = setBTGV(addr,data,visualCheck);
cd(addr.SRC)

warning('New:Vicon','1) SE STAI USANDO ANCHE IL VICON CONTROLLA PERCHE'' E'' STATO CAMBIATO IL CODICE IN MATR.m')
warning('New:Vicon','2) HO HACKERATO LOADGOODTIME.m PER ANDARE A CASA PRIMA VENERDI'' 9 DICEMBRE 2011... CONTROLLA POST SE I SORTs VANNO BENE')

%% do start
for iBlock = Blocks
    for iTrial = Trials{iBlock}          
        % preprocess
        rec = preprocess_rec(addr,data,rec,iBlock,iTrial,GoodTime,visualCheck);
        if ~visualCheck
            % sort
            BLOCK = iBlock; 
            TRIAL = data.block{BLOCK}.iTrialGiven(iTrial);         
            for iCH = 1:32      
                h = iCH_Run(addr,data,rec,TRIAL,iCH); 
                clear h; % don't need it 
            end  
        end
    end
end
cd(addr.SRC)

