function [data,EXs,TOT_INFOs] = load_data_r330(data,addr,OutFlag)
   %
        % ratto&esercizio&data  % radice         % identificativo esercizio
   EXs = {
          % BipCRW
          'r330_BipCRW_19Jul', 'r330_07_19_11', 'BipCRW'; ... 
          % BipRW
          'r330_BipRW_7Jul', 'r330_07_07_11', 'BipRW'; ...
          % BipRWINI
          'r330_BipRWINI_19Jul', 'r330_07_19_11', 'BipRWINI'; ... 
          % BipSTAIRS
          'r330_BipSTAIRS_7Jul', 'r330_07_07_11', 'BipSTAIRS'; ...
          % BipTM
          'r330_BipTM_9Jul', 'r330_07_09_11', 'BipTM'; ...
          'r330_BipTM_14Jul', 'r330_07_14_11', 'BipTM'; ...
          % QCRW45
          'r330_QCRW45_16Jul',    'r330_07_16_11', 'QCRW45';    ... 
          % QCRW90
          'r330_QCRW90_16Jul',    'r330_07_16_11', 'QCRW90';    ... 
          % QRW
          'r330_QRW_12Jul',    'r330_07_12_11', 'QRW';    ...                       
          'r330_QRW_16Jul',    'r330_07_16_11', 'QRW';    ...                       
          % QRWINI
          'r330_QRWINI_18Jul', 'r330_07_18_11', 'QRWINI'; ... 
          % QSTAIRS          
          'r330_QSTAIRS_18Jul', 'r330_07_18_11', 'QSTAIRS'; ... 
          % Qlad
          'r330_Qlad_06Jul',    'r330_07_06_11', 'Qlad';    ...                       
          % QrobRW   
          'r330_QrobRW_08Jul',    'r330_07_08_11', 'QrobRW';    ...                       
          % Qroblad     
          %
          % InjQCRW90          
          % InjQRW
          'r330_InjQRW_26Jul',   'r330_07_26_11', 'InjQRW'; ...
          'r330_InjQRW_29Jul',   'r330_07_29_11', 'InjQRW'; ...
          'r330_InjQRW_30Jul',   'r330_07_30_11', 'InjQRW'; ...
          'r330_InjQRW_11Aug',   'r330_08_11_11', 'InjQRW'; ...
          % InjQRWROB      
          'r330_InjQRWROB_29Jul',   'r330_07_29_11', 'InjQRWROB'; ... 
          'r330_InjQRWROB_30Jul',   'r330_07_30_11', 'InjQRWROB'; ... 
          };                         

   %   
                  % radice         % identificativo blocchi         % trials 
   TOT_INFOs = {'r330_07_06_11', {'r330_07_06_11_info_Block-1.mat', [1 29]}; ... 
                'r330_07_07_11', {'r330_07_07_11_info_Block-1.mat', [1 43]}; ... 
                'r330_07_08_11', {'r330_07_08_11_info_Block-1.mat', [1 22]}; ... 
                'r330_07_09_11', {'r330_07_09_11_info_Block-1.mat', [1 14]}; ...  
                'r330_07_12_11', {'r330_07_12_11_info_Block-1.mat', [1 20]}; ...       
                'r330_07_14_11', {'r330_07_14_11_info_Block-1.mat', [1 19]}; ...  
                'r330_07_16_11', {'r330_07_16_11_info_Block-1.mat', [1 17]; ...  
                                  'r330_07_16_11_info_Block-2.mat', [18 28];
                                  'r330_07_16_11_info_Block-3.mat', [29 54]}; ...
                'r330_07_18_11', {'r330_07_18_11_info_Block-1.mat', [1 35]}; ...                
                'r330_07_19_11', {'r330_07_19_11_info_Block-1.mat', [1 16];  ...   
                                  'r330_07_19_11_info_Block-2.mat', [17 24]; ...
                                  'r330_07_19_11_info_Block-3.mat', [25 33]}; ...    
                'r330_07_26_11', {'r330_07_26_11_info_Block-1.mat', [1 5]; ...
                                  'r330_07_26_11_info_Block-2.mat', [6 13]}; ...   
                'r330_07_29_11', {'r330_07_29_11_info_Block-1.mat', [1 20]; ...
                                  'r330_07_29_11_info_Block-2.mat', [21 35]}; ...   
                'r330_07_30_11', {'r330_07_30_11_info_Block-1.mat', [1 15]; ...
                                  'r330_07_30_11_info_Block-2.mat', [16 28]}; ...  
                'r330_08_11_11', {'r330_08_11_11_info_Block-1.mat', [1 11]; ...
                                  'missing', [12 41]}; ...
                };       
   % 
   
   if  strcmp(OutFlag,'update_data')       
       % define root of the rat
       ROOT = cd; 
       data.rat_folder = [addr.RAW, '/NeuWalk Divas/r330'];       
       % identificativo esercizio   % indirizzo cartella raw data   
       ADDRESSES = AddressExercize(data);     
       % load all informations
       data = evalData(data,EXs,TOT_INFOs,ADDRESSES,ROOT);
   end
end
