function data = load_data_r240_tm_26Nov(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')
    data.folder = [addr.RAW,'/rat 240/Treadmill/26 Nov 2010'];
    data.rat = 'r240';
    % % first block
    data.block{1}.info = 'r240_11_26_10_info_1.mat'; 
    data.block{1}.iTrial = 1:3;
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
    data.block{2}.info = 'r240_11_26_10_info_2.mat'; 
    data.block{2}.iTrial = 4:24;
    data.block{2}.SzTrial = length(data.block{2}.iTrial); 
    data.block{2}.iTrialGiven = [10 17 21 22 23];
    data.block{2}.SzTrialGiven = length(data.block{2}.iTrialGiven); 
    % RAW data to read
    data.block{2}.raw = {  
                             'r240_11_26_10_raw_v_10.mat'                                        
                             'r240_11_26_10_raw_v_17.mat'                                        
                             'r240_11_26_10_raw_v_21.mat'                                        
                             'r240_11_26_10_raw_v_22.mat'                                                             
                             'r240_11_26_10_raw_v_23.mat'   
                        };                    
    if size(data.block{2}.raw,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{2}.akg = { 
                            'TM_246_Nov_201110_'
                            'TM_246_Nov_201117_'
                            'TM_246_Nov_201121_'
                            'TM_246_Nov_201122_'
                            'TM_246_Nov_201123_'    
                        };
    if size(data.block{2}.akg,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.AKG)')
    end 

end    
    
