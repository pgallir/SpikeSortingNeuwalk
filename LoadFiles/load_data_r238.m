function [data,EXs,TOT_INFOs] = load_data_r238(data,addr,OutFlag)
      
   % 
        % ratto&esercizio&data  % radice         % identificativo esercizio
   EXs = {                  
          % Qlad
          'r238_Qlad_19Dic', 'r238_12_19_10', 'Qlad'; ...        
          % 2cRW
          'r238_2cRW_16Dic', 'r238_12_16_10', '2cRW'; ...         
          
          };    
                  % radice         % identificativo blocchi         % trials 
   TOT_INFOs = {'r238_12_16_10', {'r238_12_16_10_info_1.mat', [1 24]; ... 
                                  'r238_12_16_10_info_2.mat', [25 28]};  ...  
                'r238_12_19_10', {'r238_12_19_10_info_2.mat', [1 25]} ...                   
               };   
   % 
  
   
   if  strcmp(OutFlag,'update_data')         
       % define root of the rat
       ROOT = cd; 
       data.rat_folder = [addr.RAW, '/Beast/r238'];           
       % identificativo esercizio   % indirizzo cartella raw data   
       ADDRESSES = AddressExercize(data);     
       % load all informations
       data = evalData(data,EXs,TOT_INFOs,ADDRESSES,ROOT);
   end
   
end

