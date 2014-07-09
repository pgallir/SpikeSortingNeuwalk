function data = load_data_r330_BipTM_9Jul(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
        '/NeuWalk Divas/#330/old/P0_110709_BRAINRECORDING_BIP_TM/TDT'];
    data.rat = 'r330';
    % % first block
    data.block{1}.info = 'r330_07_09_11_info_Block-1.mat'; 
    data.block{1}.iTrial = 1:14;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [6 7 9 11 13];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r330_07_09_11_v_6.mat' 
                             'r330_07_09_11_v_7.mat' 
                             'r330_07_09_11_v_9.mat' 
                             'r330_07_09_11_v_11.mat' 
                             'r330_07_09_11_v_13.mat' 
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