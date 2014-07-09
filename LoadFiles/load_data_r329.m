function [data,EXs,TOT_INFOs] = load_data_r329(data,addr,OutFlag)
    
   %
        % ratto&esercizio&data  % radice         % identificativo esercizio
   EXs = {         
          % BipCRW
          % BipRW
          % BipRWINI
          % BipSTAIRS
          % BipTM
          % QCRW45
          % QCRW90
          % QRW
          'r329_QRW_12Jul', 'r329_07_12_11', 'QRW'; ...    
          'r329_QRW_18Jul', 'r329_07_18_11', 'QRW'; ...   
          % QRWINI
          % QSTAIRS
          'r329_STAIRS_20Jul', 'r329_07_20_11', 'QSTAIRS'; ...    
          % Qlad
          % QrobRW   
          % Qroblad       
          };    
                  % radice         % identificativo blocchi         % trials 
   TOT_INFOs = {'r329_07_12_11', {'r329_07_12_11_info_Block-1.mat', [1 23]};  ...                
                'r329_07_18_11', {'r329_07_18_11_info_Block-1.mat', [1 23];  ... 
                                  'r329_07_18_11_info_Block-2.mat', [24 39];  ... 
                                  'r329_07_18_11_info_Block-3.mat', [40 49]}; ... 
                'r329_07_20_11', {'r329_07_20_11_info_Block-1.mat', [1 21]};  ...                                                  
                };   
   % 
   
   if  strcmp(OutFlag,'update_data')       
       % define root of the rat
       ROOT = cd; 
       data.rat_folder = [addr.RAW, '/NeuWalk Divas/r329'];           
       % identificativo esercizio   % indirizzo cartella raw data   
       ADDRESSES = AddressExercize(data);     
       % load all informations
       data = evalData(data,EXs,TOT_INFOs,ADDRESSES,ROOT);
   end
end
