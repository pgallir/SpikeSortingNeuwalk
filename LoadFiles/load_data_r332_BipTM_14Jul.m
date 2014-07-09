function data = load_data_r332_BipTM_14Jul(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
    '/NeuWalk Divas/#332/P0_110714_BRAINREC_BIP_TM_/TDT'];
    data.rat = 'r332';
    % % first block
    data.block{1}.info = 'r332_07_14_11_info_Block-1.mat'; 
    data.block{1}.iTrial = [1:7];
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [3];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r332_07_14_11_v_3' 
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = { 
                             ''
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   
    
    % % second block
    data.block{2}.info = 'r332_07_14_11_info_Block-1.mat'; 
    data.block{2}.iTrial = [1:6];
    data.block{2}.SzTrial = length(data.block{2}.iTrial); 
    data.block{2}.iTrialGiven = [8 10 11 13];
    data.block{2}.SzTrialGiven = length(data.block{2}.iTrialGiven); 
    % RAW data to read
    data.block{2}.raw = {     
                             'r332_07_14_11_v_8' 
                             'r332_07_14_11_v_10' 
                             'r332_07_14_11_v_11' 
                             'r332_07_14_11_v_13' 
                        };
    if size(data.block{2}.raw,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{2}.akg = { 
                             ''
                             ''
                             ''
                             ''
                        };
    if size(data.block{2}.akg,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.AKG)')
    end   
    
end