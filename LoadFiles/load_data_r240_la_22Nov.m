function data = load_data_r240_la_22Nov(data,addr,user)


if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')
    
    data.Ratfolder = [addr.RAW,'/rat 240'];
    data.folder = [data.Ratfolder,'/Ladderator/22 Nov 2010'];
    data.rat = 'r240';
    % % first block
    data.block{1}.info = 'r240_11_16_10_info_1'; 
    data.block{1}.iTrial = 1:19;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [10 11 12];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {  
                             'r240_11_16_10_raw_v_10.mat'
                             'r240_11_16_10_raw_v_11.mat'
                             'r240_11_16_10_raw_v_12.mat'
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = { 
                          '' 
                          '' 
                          ''                            
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   

end

    
 

 
