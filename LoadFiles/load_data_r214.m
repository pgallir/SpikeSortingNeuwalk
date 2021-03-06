function [data,EXs,TOT_INFOs] = load_data_r214(data,addr,OutFlag)
      
   % 
        % ratto&esercizio&data  % radice         % identificativo esercizio
   EXs = { 
          % QTM          
          'r214_QTM_11Apr', 'r214_04_11_13', 'QTM'; ...
          % QRW
          'r214_QRW_11Apr', 'r214_04_11_13', 'QRW'; ...
          'r214_QRW_16Apr', 'r214_04_16_13', 'QRW'; ...
          'r214_QRW_22Apr', 'r214_04_22_13', 'QRW'; ...
          % QCRW                 
          'r214_QCRW_16Apr', 'r214_04_16_13', 'QCRW'; ...
          % Qlad
          'r214_Qlad_22Apr', 'r214_04_22_13', 'Qlad'; ...
          % Surprise
          'r214_Surprise_22Apr', 'r214_04_22_13', 'Surprise'; ...
          };    
                  % radice         % identificativo blocchi         % trials 
   TOT_INFOs = {'r214_04_11_13', {'r214_04_11_13_info_Block-1.mat', [1 17]; ... 
                                  'r214_04_11_13_info_Block-2.mat', [18 32]};  ... 
                'r214_04_16_13', {'r214_04_16_13_info_Block-1.mat', [1 46]};  ... 
                'r214_04_22_13', {'r214_04_22_13_info_Block-1.mat', [1 38]};  ...                
                };   
   % 
  
   
   if  strcmp(OutFlag,'update_data')         
       % define root of the rat
       ROOT = cd; 
       data.rat_folder = [addr.RAW, '/NeuWalk Divas/r214'];           
       % identificativo esercizio   % indirizzo cartella raw data   
       ADDRESSES = AddressExercize(data);     
       % load all informations
       data = evalData(data,EXs,TOT_INFOs,ADDRESSES,ROOT);
   end
   
end

