% readData batch

% if CheckGoodtimes == 0, it sorts
% if CheckGoodtimes == 1, it plots signals for visual checking
CheckGoodtimes = 0; 



for r = [218,220] % loop missing rats % 217,218,215

    %% pre deliverable
    if r == 10
    
        
    elseif r == 195
    
    %% BEASTs
    elseif r == 238   
    EXPERIMENTs = {}; 
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end
        
    elseif r == 239    
    EXPERIMENTs = {};
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end

    elseif r == 240
    EXPERIMENTs = {}; 
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end

    %% DIVAs
    
    elseif r == 214    
    EXPERIMENTs = {};
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end

    elseif r == 215    
    EXPERIMENTs = {};
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end

    elseif r == 217    
    EXPERIMENTs = {};
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end

    elseif r == 218    
    EXPERIMENTs = {'r218_QRW_7May','r218_QCRW_7May'};
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end

    elseif r == 219    
    EXPERIMENTs = {};
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end
    
    elseif r == 220    
    EXPERIMENTs = {'r220_QRW_19Apr'};
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end

    elseif r == 327    
    EXPERIMENTs = {};
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end

    elseif r == 329   
    EXPERIMENTs = {}; 
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end 
    
    
    elseif r == 330
    EXPERIMENTs = {}; 
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end 


    elseif r == 332
    EXPERIMENTs =  {};  
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end


    elseif r == 333
    EXPERIMENTs =  {};  
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end


    elseif r == 334
    EXPERIMENTs =  {};  
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end

    elseif r == 335
    EXPERIMENTs =  {}; 
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end            

    elseif r == 336
    EXPERIMENTs =  {}; 
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end        

    
    %% prova elettrodo
    elseif r == 429
    EXPERIMENTs =  {};  
    for iEx = 1:numel(EXPERIMENTs)
        readData_rat_ex_day(CheckGoodtimes,r,EXPERIMENTs{iEx}); 
    end     
    
    
    end         
       
 
end