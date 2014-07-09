function [data,EXs,TOT_INFOs] = load_data_r334(data,addr,OutFlag)
    
   %
        % ratto&esercizio&data  % radice         % identificativo esercizio
   EXs = {
          % BipCRW
          % BipRW
          'r334_BipRW_07Jul', 'r334_07_07_11', 'BipRW'; ... 
          'r334_BipRW_13Jul', 'r334_07_13_11', 'BipRW'; ...  % MANCA INFO
          % BipRWINI
          % BipSTAIRS
          'r334_BipSTAIRS_13Jul', 'r334_07_13_11', 'BipSTAIRS'; ...
          % BipTM
          'r334_BipTM_09Jul', 'r334_07_09_11', 'BipTM'; ...
          'r334_BipTM_14Jul', 'r334_07_14_11', 'BipTM'; ...
          % QCRW45
          'r334_QCRW45_16Jul', 'r334_07_16_11', 'QCRW45'; ...
          % QCRW90
          'r334_QCRW90_16Jul', 'r334_07_16_11', 'QCRW90'; ...
          % QRW
          'r334_QRW_12Jul', 'r334_07_12_11', 'QRW'; ...
          'r334_QRW_16Jul', 'r334_07_16_11', 'QRW'; ...
          % QRWINI
          'r334_QRWINI_18Jul', 'r334_07_18_11', 'QRWINI'; ...
          % QSTAIRS
          'r334_QSTAIRS_18Jul', 'r334_07_18_11', 'QSTAIRS'; ...          
          % Qlad
          'r334_Qlad_06Jul', 'r334_07_06_11', 'Qlad'; ...
          % QrobRW   
          'r334_QrobRW_08Jul', 'r334_07_08_11', 'QrobRW'; ...          
          % Qroblad       
          };    
                  % radice         % identificativo blocchi         % trials 
   TOT_INFOs = {'r334_07_06_11', {'r334_07_06_11_info_Block-1.mat', [1 11]; ...
                                  'r334_07_06_11_info_Block-2.mat', [12 32]};  ...
                'r334_07_07_11', {'r334_07_07_11_info_Block-1.mat', [1 44]};  ...   
                'r334_07_08_11', {'r334_07_08_11_info_Block-1.mat', [1 33]};  ...   
                'r334_07_09_11', {'r334_07_09_11_info_Block-1.mat', [1 13]};  ...                                
                'r334_07_12_11', {'r334_07_12_11_info_Block-2.mat', [1 25]; ...
                                  'esiste un blocco 3 che non so dove sia', [26 30]};  ... 
                'r334_07_13_11', {'blocco mancante', [1,2]; ... 
                                  'r334_07_13_11_info_Block-2.mat', [3 62]};  ...
                'r334_07_14_11', {'r334_07_14_11_info_Block-1.mat', [1 13]};  ...
                'r334_07_16_11', {'r334_07_16_11_info_Block-1.mat', [1 25]; ...
                                  'r334_07_16_11_info_Block-2.mat', [26 34]; ...
                                  'r334_07_16_11_info_Block-3.mat', [35 51]};  ...
                'r334_07_18_11', {'r334_07_18_11_info_Block-1.mat', [1 38]};  ...                                  
                
                                                           
         
                };   
   % 
   
   
   if  strcmp(OutFlag,'update_data')       
       % define root of the rat
       ROOT = cd; 
       data.rat_folder = [addr.RAW, '/NeuWalk Divas/r334'];           
       % identificativo esercizio   % indirizzo cartella raw data   
       ADDRESSES = AddressExercize(data);     
       % load all informations
       data = evalData(data,EXs,TOT_INFOs,ADDRESSES,ROOT);
   end
end
