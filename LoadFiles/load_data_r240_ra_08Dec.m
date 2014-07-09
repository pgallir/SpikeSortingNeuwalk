function data = load_data_r240_ra_08Dec(data,addr,user)

if  strcmp(user,'JR-pc-lab')

    data.Ratfolder = [addr.RAW,'/rat240'];
    data.folder = [addr.RAW,'/rat 240/Runway/8 Dec 2010'];
    data.rat = 'r240';
    % % first block
    data.block{1}.info = ''; 
    data.block{1}.iTrial = [];
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [];
    data.block{1}.SzTrialGiven = 0; 
    % RAW data to read
    data.block{1}.raw = {   };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = {  };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   

    % % second block
    data.block{2}.info = 'r240_12_08_10_info_2.mat'; 
    data.block{2}.iTrial = 1:27;
    data.block{2}.SzTrial = length(data.block{2}.iTrial); 
    data.block{2}.iTrialGiven = [3 11 12 13 16 17 18];
    data.block{2}.SzTrialGiven = length(data.block{2}.iTrialGiven); 
    % RAW data to read
    data.block{2}.raw = {    
                             'r240_12_08_10_raw_v_3.mat'                                        
                             'r240_12_08_10_raw_v_11.mat'                                        
                             'r240_12_08_10_raw_v_12.mat'                                        
                             'r240_12_08_10_raw_v_13.mat'                                                             
                             'r240_12_08_10_raw_v_16.mat'   
                             'r240_12_08_10_raw_v_17.mat'                                                             
                             'r240_12_08_10_raw_v_18.mat'
                        };
    if size(data.block{2}.raw,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{2}.akg = {    
                            'RW_240_08_Dec_2010_03_'
                            'RW_240_08_Dec_2010_11_'
                            'RW_240_08_Dec_2010_12_'
                            'RW_240_08_Dec_2010_13_'
                            'RW_240_08_Dec_2010_16_'    
                            'RW_240_08_Dec_2010_17_'
                            'RW_240_08_Dec_2010_18_'
                        };
    if size(data.block{2}.akg,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.AKG)')
    end 
end