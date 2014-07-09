function data = load_data_r238_Lad_19Dic(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
        '/rat 238/Ladderator/19 Dec 2010'];
    data.rat = 'r238';
    % % first block
    data.block{1}.info = 'r238_12_19_10_info_2.mat'; 
    data.block{1}.iTrial = 1:25;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [2 7 8 10 16];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r238_12_19_10_raw_v_2.mat'
                             'r238_12_19_10_raw_v_7.mat'
                             'r238_12_19_10_raw_v_8.mat'
                             'r238_12_19_10_raw_v_10.mat'
                             'r238_12_19_10_raw_v_16.mat'
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = { 
                             'Ladder_l238_19_Dec_2011_02_'
                             'Ladder_l238_19_Dec_2011_07_'
                             'Ladder_l238_19_Dec_2011_08_'
                             'Ladder_l238_19_Dec_2011_10_'
                             'Ladder_l238_19_Dec_2011_16_'
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   
    

end