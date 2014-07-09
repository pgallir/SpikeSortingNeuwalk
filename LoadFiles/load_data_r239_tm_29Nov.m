function data = load_data_r239_tm_29Nov(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')
    
    data.Ratfolder = [addr.RAW,'/rat 239'];
    data.folder = [data.Ratfolder,'/Treadmill/29 Nov 2010'];
    data.rat = 'r239';
    % % first block
    data.block{1}.info = []; 
    data.block{1}.iTrial = 1:16;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [11 12 13];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {  
                             'r239_11_29_10_raw_v_11.mat'
                             'r239_11_29_10_raw_v_12.mat'
                             'r239_11_29_10_raw_v_13.mat'
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = { 
                          '#239_20101129_TM10_11_'
                          '#239_20101129_TM10_12_'
                          '#239_20101129_TM10_13_'
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   

end

    
 