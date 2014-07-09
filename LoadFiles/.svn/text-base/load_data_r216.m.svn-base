function [data,EXs,TOT_INFOs] = load_data_r216(data,addr,OutFlag)
      
   % 
        % ratto&esercizio&data  % radice         % identificativo esercizio
   EXs = { 
          % QTM
          'r216_QTM_12Apr', 'r216_04_12_13', 'QTM'; ...          
          % QRW          
          'r216_QRW_12Apr', 'r216_04_12_13', 'QRW'; ...         
          'r216_QRW_20Apr', 'r216_04_20_13', 'QRW'; ...        
          'r216_QRW_25Apr', 'r216_04_25_13', 'QRW'; ...        
          % QCRW                 
          'r216_QCRW_20Apr', 'r216_04_20_13', 'QCRW'; ...        
          % Qlad
          'r216_Qlad_25Apr', 'r216_04_25_13', 'Qlad'; ...  
          % Surprise
          };    
                  % radice         % identificativo blocchi         % trials 
   TOT_INFOs = {'r216_04_12_13', {'r216_04_12_13_info_Block-1.mat', [1 24]; ... 
                                  'r216_04_12_13_info_Block-2.mat', [25 28]};  ... 
                'r216_04_20_13', {'r216_04_20_13_info_Block-1.mat', [1 51]};  ... 
                'r216_04_25_13', {'r216_04_25_13_info_Block-1.mat', [1 57]};  ... 
                };   
   % 
  
   
   if  strcmp(OutFlag,'update_data')         
       % define root of the rat
       ROOT = cd; 
       data.rat_folder = [addr.RAW, '/NeuWalk Divas/r216'];           
       % identificativo esercizio   % indirizzo cartella raw data   
       ADDRESSES = AddressExercize(data);     
       % load all informations
       data = evalData(data,EXs,TOT_INFOs,ADDRESSES,ROOT);
   end
   
end

