function [data,EXs,TOT_INFOs] = load_data_r240(data,addr,OutFlag)
      
   % 
        % ratto&esercizio&data  % radice         % identificativo esercizio
   EXs = { 
          % Qlad
          'r240_Qlad_22Nov', 'r240_11_22_10', 'Qlad'; ...
          'r240_Qlad_30Nov', 'r240_11_30_10', 'Qlad'; ...
          % 2cRW
          'r240_2cRW_24Nov', 'r240_11_24_10', '2cRW'; ...
          };    
                  % radice         % identificativo blocchi         % trials 
   TOT_INFOs = {'r240_11_22_10', {'r240_11_22_10_info_1.mat', [1 19]}; ... 
                'r240_11_24_10', {'r240_11_24_10_info_10.mat', [1 72]}; ... 
                'r240_11_30_10', {'r240_11_30_10_info_1.mat', [1 19]; ... 
                                  'r240_11_30_10_info_2.mat', [23 33]};  ... 
               };   
   % 
  
   
   if  strcmp(OutFlag,'update_data')         
       % define root of the rat
       ROOT = cd; 
       data.rat_folder = [addr.RAW, '/Beast/r240'];           
       % identificativo esercizio   % indirizzo cartella raw data   
       ADDRESSES = AddressExercize(data);     
       % load all informations
       data = evalData(data,EXs,TOT_INFOs,ADDRESSES,ROOT);
   end
   
end

