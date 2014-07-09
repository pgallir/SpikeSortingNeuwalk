function data = load_data_r239_la_1Dic(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')
    
    data.Ratfolder = [addr.RAW,'/rat 239'];
    data.folder = [data.Ratfolder,'/Ladderator/1 Dec 2010'];
    data.rat = 'r239';
    % % first block
    data.block{1}.info = 'r239_12_01_10_info_1.mat'; 
    data.block{1}.iTrial = 1:29;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [23 27];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {  
                             'r239_12_01_10_raw_v_23.mat'                                         
                             'r239_12_01_10_raw_v_27.mat'
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = { 
                          ''
                          '' 
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   

end


