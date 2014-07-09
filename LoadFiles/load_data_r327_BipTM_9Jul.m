function data = load_data_r327_BipTM_9Jul(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
        '/NeuWalk Divas/#327/P0_110709_BRAINRECORDING_BIP_TM/TDT'];
    data.rat = 'r327';
    % % first block
    data.block{1}.info = 'r327_07_09_11_info_Block-1.mat'; 
    data.block{1}.iTrial = [1:10];
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [1 2 3 5 6];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r327_07_09_11_v_1'                             
                             'r327_07_09_11_v_2'                             
                             'r327_07_09_11_v_3'
                             'r327_07_09_11_v_5'
                             'r327_07_09_11_v_6'
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