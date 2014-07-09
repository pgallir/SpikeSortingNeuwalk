function data = load_data_r330_BipTM_14Jul(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
        '/NeuWalk Divas/#330/old/P0_110714_BRAINREC_BIP_TM_/TDT'];
    data.rat = 'r330';
    % % first block
    data.block{1}.info = 'r330_07_14_11_info_Block-1.mat'; 
    data.block{1}.iTrial = 1:19;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [5 9 10 13 14];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r330_07_14_11_v_5'
                             'r330_07_14_11_v_9'
                             'r330_07_14_11_v_10'
                             'r330_07_14_11_v_13'
                             'r330_07_14_11_v_14'
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = { 
                             ''
                             ''
                             ''
                             ''
                             ''
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   
    

end