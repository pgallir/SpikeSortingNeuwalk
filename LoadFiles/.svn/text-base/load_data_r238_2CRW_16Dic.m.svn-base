function data = load_data_r238_2CRW_16Dic(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
        '/rat 238/Two_Choice_Runway/16 Dec 2010'];
    data.rat = 'r238';
    % % first block
    data.block{1}.info = 'r238_12_16_10_info_1.mat'; 
    data.block{1}.iTrial = 1:24;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [7 10 13];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r238_12_16_10_raw_v_7.mat'
                             'r238_12_16_10_raw_v_10.mat'
                             'r238_12_16_10_raw_v_13.mat'
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = {                              
                             '2cRW_real238_16_Dec_2010_07_'
                             '2cRW_real238_16_Dec_2010_10_'
                             '2cRW_real238_16_Dec_2010_13_'
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   
    

end