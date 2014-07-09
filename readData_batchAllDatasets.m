% readData batch

% if CheckGoodtimes == 0, it sorts
% if CheckGoodtimes == 1, it plots signals for visual checking
CheckGoodtimes = 0; 

for r = 220 % loop missing rats
    
    cd 'LoadFiles' % qui trovo le funzioni load_data_r*.m
    data = struct; 
    addr = struct;     
    [~,EXs,~] = feval(['load_data_r',int2str(r)], ... 
                                        data, addr,'PUPPA!!!');                                     
    cd .. % esco e torno in ROOT
	EXPERIMENTs = EXs(:,1)'; 
	
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end
   

end