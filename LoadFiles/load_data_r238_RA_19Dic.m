function data = load_data_r238_RA_19Dic(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
        '/rat 238/Runway/19 Dec 2010'];
    data.rat = 'r238';
    % % first block
    data.block{1}.info = 'r238_12_19_10_info_3.mat'; 
    data.block{1}.iTrial = 1:10;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [1 3 5 6 9];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r238_12_19_10_raw_b3_v_1.mat'
                             'r238_12_19_10_raw_b3_v_3.mat'
                             'r238_12_19_10_raw_b3_v_5.mat'
                             'r238_12_19_10_raw_b3_v_6.mat'
                             'r238_12_19_10_raw_b3_v_9.mat'
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = { 
                             'Runway_r238_19_Dec_2010_01_'
                             'Runway_r238_19_Dec_2010_03_'
                             'Runway_r238_19_Dec_2010_05_'
                             'Runway_r238_19_Dec_2010_06_'
                             'Runway_r238_19_Dec_2010_09_'
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   
    

end