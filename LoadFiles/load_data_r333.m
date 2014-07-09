function [data,EXs,TOT_INFOs] = load_data_r333(data,addr,OutFlag)
    
   %
        % ratto&esercizio&data  % radice         % identificativo esercizio
   EXs = {
          % BipCRW
          % BipRW
          'r333_BipRW_07Jul', 'r333_07_07_11', 'BipRW'; ... 
          % BipRWINI
          % BipSTAIRS
          'r333_BipSTAIRS_04Jul', 'r333_07_04_11', 'BipSTAIRS'; ... 
          'r333_BipSTAIRS_07Jul', 'r333_07_07_11', 'BipSTAIRS'; ... 
          % BipTM
          'r333_BipTM_14Jul', 'r333_07_14_11', 'BipTM'; ... 
          % QCRW45
          'r333_QCRW45_16Jul', 'r333_07_16_11', 'QCRW45'; ... 
          % QCRW90
          'r333_QCRW90_16Jul', 'r333_07_16_11', 'QCRW90'; ... 
          % QRW
          'r333_QRW_12Jul', 'r333_07_12_11', 'QRW'; ...       
          'r333_QRW_16Jul', 'r333_07_16_11', 'QRW'; ... 
          % QRWINI
          'r333_QRWINI_18Jul', 'r333_07_18_11', 'QRWINI'; ... 
          % QSTAIRS
          'r333_QSTAIRS_18Jul', 'r333_07_18_11', 'QSTAIRS'; ... 
          % Qlad
          'r333_Qlad_06Jul', 'r333_07_06_11', 'Qlad'; ...  % MANCA INFO
          % QrobRW 
          'r333_QrobRW_08Jul', 'r333_07_08_11', 'QrobRW'; ...  
          % Qroblad       
          };    
                  % radice         % identificativo blocchi         % trials 
   TOT_INFOs = {'r333_07_04_11', {'r333_07_04_11_info.mat', [1 39]};  ...   
                'r333_07_06_11', {'r333_07_06_11_info_Block-1.mat', [1 9]; ... 
                                  'blocco mancante', [10 21]; ... % sarebbe 10-20
                                  'r333_07_06_11_info_Block-3.mat', [22 31]};  ... %% 22? ed il 21?
                'r333_07_07_11', {'r333_07_07_11_info_Block-2.mat', [1 43]};  ...       
                'r333_07_08_11', {'r333_07_08_11_info_Block-1.mat', [1 15]};  ...       
                'r333_07_12_11', {'r333_07_12_11_info_Block-1.mat', [1 19]};  ...                
                'r333_07_14_11', {'r333_07_14_11_info_Block-1.mat', [1 17]};  ...                
                'r333_07_16_11', {'r333_07_16_11_info_Block-1.mat', [1 14]; ... 
                                  'r333_07_16_11_info_Block-2.mat', [15 27]; ... 
                                  'r333_07_16_11_info_Block-3.mat', [28 38]; ... 
                                  'r333_07_16_11_info_Block-4.mat', [39 58]};  ...
                'r333_07_18_11', {'r333_07_18_11_info_Block-1.mat', [1 27]};  ...                                                  
         
                };   
   % 
   
   if  strcmp(OutFlag,'update_data')       
       % define root of the rat
       ROOT = cd; 
       data.rat_folder = [addr.RAW, '/NeuWalk Divas/r333'];           
       % identificativo esercizio   % indirizzo cartella raw data   
       ADDRESSES = AddressExercize(data);            
       % load all informations
       data = evalData(data,EXs,TOT_INFOs,ADDRESSES,ROOT);
   end
end
