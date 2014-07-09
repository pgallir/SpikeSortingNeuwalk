function data = load_data_r327_BipTM_2Jul(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
    '/NeuWalk Divas/#327/P0_BIP_TM_20110702/TDT'];
    data.rat = 'r327';
    % % first block
    data.block{1}.info = 'r327_07_02_11_info.mat'; 
    data.block{1}.iTrial = [1:14];
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [1 7 9 10 12 13];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r327_07_02_11_v_1' 
                             'r327_07_02_11_v_7'                             
                             'r327_07_02_11_v_9'                             
                             'r327_07_02_11_v_10'
                             'r327_07_02_11_v_12'
                             'r327_07_02_11_v_13'
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