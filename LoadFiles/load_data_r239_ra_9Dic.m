function data = load_data_r239_ra_9Dic(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.Ratfolder = [addr.RAW,'/rat 239'];
    data.folder = [data.Ratfolder,'/Runway/9 Dec 2010'];
    data.rat = 'r239';
    % % first block
    data.block{1}.info = 'r239_12_09_10_info_1.mat'; 
    data.block{1}.iTrial = 1:6; % no trial given
    data.block{1}.SzTrial = 0; 
    data.block{1}.iTrialGiven = [];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {                                 
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = { 
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   

    % % second block
    data.block{2}.info = 'r239_12_09_10_info_2.mat'; 
    data.block{2}.iTrial = 7:36;
    data.block{2}.SzTrial = length(data.block{2}.iTrial); 
    data.block{2}.iTrialGiven = [17 26 28 30 35];
    data.block{2}.SzTrialGiven = length(data.block{2}.iTrialGiven); 
    % RAW data to read
    data.block{2}.raw = {                         
                            'r239_12_09_10_raw_v_17.mat'
                            'r239_12_09_10_raw_v_26.mat'
                            'r239_12_09_10_raw_v_28.mat'
                            'r239_12_09_10_raw_v_30.mat'
                            'r239_12_09_10_raw_v_35.mat'
                        };
    if size(data.block{2}.raw,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{2}.akg = {  
                            'RW_239_09_Dec_2010_17_'
                            'RW_239_09_Dec_2010_26_'
                            'RW_239_09_Dec_2010_28_'
                            'RW_239_09_Dec_2010_30_'
                            'RW_239_09_Dec_2010_35_'
                        };
    if size(data.block{2}.akg,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.AKG)')
    end     

end