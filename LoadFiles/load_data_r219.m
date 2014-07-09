function [data,EXs,TOT_INFOs] = load_data_r219(data,addr,OutFlag)
      
   % 
        % ratto&esercizio&data  % radice         % identificativo esercizio
   EXs = {
% [r219, April 25 2013] 21 22 23 25 28   
% [r219, April 25 2013] 1 9 10 11 13 14 16 17 19 20
          % QTM             
          'r219_QTM_11Apr', 'r219_04_11_13', 'QTM'; ... 
          % QRW    
          'r219_QRW_11Apr', 'r219_04_11_13', 'QRW'; ... 
          'r219_QRW_25Apr', 'r219_04_25_13', 'QRW'; ...
          % QCRW                 
          % Qlad
          'r219_Qlad_25Apr', 'r219_04_25_13', 'Qlad'; ...
          % Surprise
          };    
                  % radice         % identificativo blocchi         % trials 
   TOT_INFOs = {'r219_04_11_13', {'r219_04_11_13_info_Block-2.mat', [1 21]; ...
                                  'r219_04_11_13_info_Block-2.mat', [22 28]};  ... 
                'r219_04_25_13', {'r219_04_25_13_info_Block-1.mat', [1 36]};  ... 
                };   
   % 
  
   
   if  strcmp(OutFlag,'update_data')         
       % define root of the rat
       ROOT = cd; 
       data.rat_folder = [addr.RAW, '/NeuWalk Divas/r219'];           
       % identificativo esercizio   % indirizzo cartella raw data   
       ADDRESSES = AddressExercize(data);     
       % load all informations
       data = evalData(data,EXs,TOT_INFOs,ADDRESSES,ROOT);
   end
   
end

