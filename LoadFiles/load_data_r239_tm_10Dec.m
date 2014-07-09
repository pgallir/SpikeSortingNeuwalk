function data = load_data_r239_tm_10Dec(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')
%     data.Ratfolder = [addr.RAW,'/rat 239'];
    data.folder = [addr.RAW,'/rat 239/Treadmill/10 Dec 2010'];
    data.rat = 'r239';
    % % first block
    data.block{1}.info = 'r239_12_10_10_info_1.mat'; 
    data.block{1}.iTrial = 1:20;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [4 5 7 8 9 10 11];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {  
                             'r239_12_10_10_raw_v_4.mat'                                         
                             'r239_12_10_10_raw_v_5.mat'
                             'r239_12_10_10_raw_v_7.mat'
                             'r239_12_10_10_raw_v_8.mat'
                             'r239_12_10_10_raw_v_9.mat'
                             'r239_12_10_10_raw_v_10.mat'
                             'r239_12_10_10_raw_v_11.mat'
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = { 
                            'TM_239_10_Dec_201004_'
                            'TM_239_10_Dec_201005_'
                            'TM_239_10_Dec_201007_'
                            'TM_239_10_Dec_201008_'
                            'TM_239_10_Dec_201009_'
                            'TM_239_10_Dec_201010_'
                            'TM_239_10_Dec_201011_'
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   

    % % second block
    data.block{2}.info = []; 
    data.block{2}.iTrial = [];
    data.block{2}.SzTrial = length(data.block{2}.iTrial); 
    data.block{2}.iTrialGiven = [];
    data.block{2}.SzTrialGiven = length(data.block{2}.iTrialGiven); 
    % RAW data to read
    data.block{2}.raw = { 

                        };
    if size(data.block{2}.raw,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{2}.akg = {  

                        };
    if size(data.block{2}.akg,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.AKG)')
    end 
end