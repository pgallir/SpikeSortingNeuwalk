function [data,EXs,TOT_INFOs] = load_data_r239(data,addr,OutFlag)
      
   % 
        % ratto&esercizio&data  % radice         % identificativo esercizio
   EXs = { 
          % Qlad
          'r239_Qlad_22Nov', 'r239_11_22_10', 'Qlad'; ...
          'r239_Qlad_30Nov', 'r239_11_30_10', 'Qlad'; ... 
          'r239_Qlad_1Dic',  'r239_12_01_10', 'Qlad'; ... 
          % 2cRW
          'r239_2cRW_16Dic', 'r239_12_16_10', '2cRW'; ... 
          'r239_2cRW_25Nov', 'r239_11_25_10', '2cRW'; ... 
          };    
                  % radice         % identificativo blocchi         % trials 
   TOT_INFOs = {'r239_11_25_10', {'r239_11_25_10_info_1.mat', [1 72]}; ... 
                'r239_11_22_10', {'r239_11_22_10_info_1.mat', [1 21]}; ...
                'r239_11_30_10', {'r239_11_30_10_info_1.mat', [1 18]}; ...
                'r239_12_01_10', {'r239_12_01_10_info_1.mat', [1 29]}; ...
                'r239_12_16_10', {'r239_12_16_10_info_1.mat', [1 32]; ... 
                                  'r239_12_16_10_info_2.mat', [33 46]};  ... 
                                  
                                  
               };   
   % 
  
   
   if  strcmp(OutFlag,'update_data')         
       % define root of the rat
       ROOT = cd; 
       data.rat_folder = [addr.RAW, '/Beast/r239'];           
       % identificativo esercizio   % indirizzo cartella raw data   
       ADDRESSES = AddressExercize(data);     
       % load all informations
       data = evalData(data,EXs,TOT_INFOs,ADDRESSES,ROOT);
   end
   
end

