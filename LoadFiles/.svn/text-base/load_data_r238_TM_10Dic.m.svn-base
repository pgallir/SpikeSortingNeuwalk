function data = load_data_r238_TM_10Dic(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
        '/rat 238/Treadmill/10 Dec 2010'];
    data.rat = 'r238';
    % % first block
    data.block{1}.info = 'r238_12_10_10_info_1.mat'; 
    data.block{1}.iTrial = 1:15;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [1 2 3 6 7 9 11 13];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r238_12_10_10_raw_v_1.mat'
                             'r238_12_10_10_raw_v_2.mat'
                             'r238_12_10_10_raw_v_3.mat'
                             'r238_12_10_10_raw_v_6.mat'
                             'r238_12_10_10_raw_v_7.mat'
                             'r238_12_10_10_raw_v_9.mat'
                             'r238_12_10_10_raw_v_11.mat'
                             'r238_12_10_10_raw_v_13.mat'
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = { 
                             'TM_238_12_10_2010_11cmps_01_'
                             'TM_238_12_10_2010_11cmps_02_'
                             'TM_238_12_10_2010_13cmps_03_'
                             'TM_238_12_10_2010_15cmps_06_'
                             'TM_238_12_10_2010_15cmps_07_'
                             'TM_238_12_10_2010_9cmps_09_'
                             'TM_238_12_10_2010_17cmps_11_'
                             'TM_238_12_10_2010_7cmps_13_'
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   
    

end