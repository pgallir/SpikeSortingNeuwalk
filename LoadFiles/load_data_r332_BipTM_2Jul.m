function data = load_data_r332_BipTM_2Jul(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
    '/NeuWalk Divas/#332/P0_BIP_TM_20110702/TDT'];
    data.rat = 'r332';
    % % first block
    data.block{1}.info = 'r332_07_02_11_info.mat'; 
    data.block{1}.iTrial = [1:15];
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [1 6 9 11 13 15];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r332_07_02_11_v_1'
                             'r332_07_02_11_v_6'
                             'r332_07_02_11_v_9'
                             'r332_07_02_11_v_11'
                             'r332_07_02_11_v_13'
                             'r332_07_02_11_v_15'
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
                             ''
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   
    
end