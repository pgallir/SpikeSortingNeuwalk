function [data,EXs,TOT_INFOs] = load_data_r218(data,addr,OutFlag)
      
   % 
        % ratto&esercizio&data  % radice         % identificativo esercizio
   EXs = { 
   %[r218*, May 10 2013] 16 17 18 19 21 22 23 24 25 26 27 28
          % QTM                
          'r218_QTM_13Apr', 'r218_04_13_13', 'QTM'; ... 
          % QRW          
          'r218_QRW_13Apr', 'r218_04_13_13', 'QRW'; ... 
          'r218_QRW_19Apr', 'r218_04_19_13', 'QRW'; ... 
          'r218_QRW_22Apr', 'r218_04_22_13', 'QRW'; ... 
          'r218_QRW_6May' , 'r218_05_06_13', 'QRW'; ...
          'r218_QRW_7May' , 'r218_05_07_13', 'QRW'; ...
          'r218_QRW_10May' , 'r218_05_10_13', 'QRW'; ...
          % QCRW                 
          'r218_QCRW_19Apr', 'r218_04_19_13', 'QCRW'; ... 
          'r218_QCRW_7May' , 'r218_05_07_13', 'QCRW'; ...
          % Qlad
          'r218_Qlad_22Apr', 'r218_04_22_13', 'Qlad'; ... 
          'r218_Qlad_6May' , 'r218_05_06_13', 'Qlad'; ... 
          'r218_Qlad_10May', 'r218_05_10_13', 'Qlad'; ... 
          % Surprise
          'r218_Surprise_22Apr', 'r218_04_22_13', 'Surprise'; ... 
          };    
                  % radice         % identificativo blocchi         % trials 
   TOT_INFOs = {'r218_04_13_13', {'r218_04_13_13_info_Block-1.mat', [1 1]; ...
                                  'r218_04_13_13_info_Block-2.mat', [2 19]; ...
                                  'r218_04_13_13_info_Block-3.mat', [20 23]};  ... 
                'r218_04_19_13', {'r218_04_19_13_info_Block-1_err_corr.mat', [1 5]; ...
                                  'r218_04_19_13_info_Block-2_err_corr.mat', [6 24]; ...
                                  'r218_04_19_13_info_Block-3_err_corr.mat', [25 65]};  ... 
                'r218_04_22_13', {'r218_04_22_13_info_Block-1.mat', [1 42]};  ... 
                'r218_05_06_13', {'r218_05_06_13_info_Block-1_err_corr.mat', [1 34]};  ... 
                'r218_05_07_13', {'r218_05_07_13_info_Block-2.mat', [1 9]; ...
                                  'r218_05_07_13_info_Block-3.mat', [10 24]; ...
                                  'r218_05_07_13_info_Block-4.mat', [25 54]};  ... 
                'r218_05_10_13', {'r218_05_10_13_info_Block-1.mat', [1 29]};  ... 
                'r218_05_06_13', {'r218_05_06_13_info_Block-1.mat', [1 34]};  ... 
                };   
   % 
  
   
   if  strcmp(OutFlag,'update_data')         
       % define root of the rat
       ROOT = cd; 
       data.rat_folder = [addr.RAW, '/NeuWalk Divas/r218'];           
       % identificativo esercizio   % indirizzo cartella raw data   
       ADDRESSES = AddressExercize(data);     
       % load all informations
       data = evalData(data,EXs,TOT_INFOs,ADDRESSES,ROOT);
   end
   
end

