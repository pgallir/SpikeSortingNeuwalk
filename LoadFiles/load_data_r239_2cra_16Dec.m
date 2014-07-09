function data = load_data_r239_2cra_16Dec(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.Ratfolder = [addr.RAW,'/rat 239'];
    data.folder = [data.Ratfolder,'/Two_Choice_Runway/16 Dec 2010'];
    data.rat = 'r239';
    % % first block
    data.block{1}.info = 'r239_12_16_10_info_1.mat'; 
    data.block{1}.iTrial = 1:32;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [20];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r239_12_16_10_raw_v_20.mat'                                         
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = { 
                            '2cRW_239_16_Dec_2010_20_'
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   

    % % second block
    data.block{2}.info = 'r239_12_16_10_info_2.mat'; 
    data.block{2}.iTrial = 33:46;
    data.block{2}.SzTrial = length(data.block{2}.iTrial); 
    data.block{2}.iTrialGiven = [40 42 43 46];
    data.block{2}.SzTrialGiven = length(data.block{2}.iTrialGiven); 
    % RAW data to read
    data.block{2}.raw = { 
                            'r239_12_16_10_raw_v_40.mat'  
                            'r239_12_16_10_raw_v_42.mat'
                            'r239_12_16_10_raw_v_43.mat'
                            'r239_12_16_10_raw_v_46.mat'
                        };
    if size(data.block{2}.raw,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{2}.akg = {  
                            '2cRW_239_16_Dec_2010_40_'
                            '2cRW_239_16_Dec_2010_42_'
                            '2cRW_239_16_Dec_2010_43_'
                            '2cRW_239_16_Dec_2010_46_'
                        };
    if size(data.block{2}.akg,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.AKG)')
    end 
   
end