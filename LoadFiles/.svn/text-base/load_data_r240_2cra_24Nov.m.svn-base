function data = load_data_r240_2cra_24Nov(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')
    data.folder = [addr.RAW,'/rat 240/Two_Choice_Runway/24 Nov 2010'];
    data.rat = 'r240';
    % % first block
    data.block{10}.info = 'r240_11_24_10_info_10'; 
    data.block{10}.iTrial = 1:53;
    data.block{10}.SzTrial = length(data.block{10}.iTrial); 
    data.block{10}.iTrialGiven = [6 9 11 12 13 14 15 16 21 49];
    data.block{10}.SzTrialGiven = length(data.block{10}.iTrialGiven); 
    % RAW data to read
    data.block{10}.raw = { 
                            'r240_11_24_10_raw_v_6.mat'
                            'r240_11_24_10_raw_v_9.mat'
                            'r240_11_24_10_raw_v_11.mat'
                            'r240_11_24_10_raw_v_12.mat'
                            'r240_11_24_10_raw_v_13.mat'
                            'r240_11_24_10_raw_v_14.mat'
                            'r240_11_24_10_raw_v_15.mat'
                            'r240_11_24_10_raw_v_16.mat'
                            'r240_11_24_10_raw_v_21.mat'
                            'r240_11_24_10_raw_v_49.mat'
                        };
    if size(data.block{10}.raw,1)~=data.block{10}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{10}.akg = { 
                            '#240_2cRW_24_Nov_2010_06_'
                            '#240_2cRW_24_Nov_2010_09_'
                            '#240_2cRW_24_Nov_2010_11_'
                            '#240_2cRW_24_Nov_2010_12_'
                            '#240_2cRW_24_Nov_2010_13_'
                            '#240_2cRW_24_Nov_2010_14_'
                            '#240_2cRW_24_Nov_2010_15_'
                            '#240_2cRW_24_Nov_2010_16_'
                            '#240_2cRW_24_Nov_2010_21_'
                            '#240_2cRW_24_Nov_2010_49_'
                          };
    if size(data.block{10}.akg,1)~=data.block{10}.SzTrialGiven
        error('error: size(data.AKG)')
    end     
    
elseif strcmp(user,'AP')
end    
    
