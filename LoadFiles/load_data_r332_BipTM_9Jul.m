function data = load_data_r332_BipTM_9Jul(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
    '/NeuWalk Divas/#332/P0_110709_BRAINRECORDING_BIP_TM/TDT'];
    data.rat = 'r332';
    % % first block
    data.block{1}.info = 'r332_07_09_11_info_Block-1.mat'; 
    data.block{1}.iTrial = [1:12];
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [1 2 3 4 5];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r332_07_09_11_v_1' 
                             'r332_07_09_11_v_2'                             
                             'r332_07_09_11_v_3'                             
                             'r332_07_09_11_v_4'
                             'r332_07_09_11_v_5'
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