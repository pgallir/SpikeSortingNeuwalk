function data = load_data_r330_BipCRW_19Jul(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
        '/NeuWalk Divas/#330/old/P0_110719_BRAINREC_BIP_CRW_/TDT'];
    data.rat = 'r330';
% % first block
    data.block{1}.info = 'r330_07_19_11_info_Block-1.mat'; 
    data.block{1}.iTrial = 1:16; 
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [2 5 6 7 10 11 12 13 15 16];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r330_07_19_11_v_2'
                             'r330_07_19_11_v_5'
                             'r330_07_19_11_v_6'
                             'r330_07_19_11_v_7'
                             'r330_07_19_11_v_10'
                             'r330_07_19_11_v_11'                             
                             'r330_07_19_11_v_12'
                             'r330_07_19_11_v_13'
                             'r330_07_19_11_v_15'                             
                             'r330_07_19_11_v_16'

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
                             ''
                             ''
                             ''
                             ''
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   
    
% % second block
    data.block{2}.info = 'r330_07_19_11_info_Block-2.mat'; 
    data.block{2}.iTrial = 1:8; 
    data.block{2}.SzTrial = length(data.block{2}.iTrial); 
    data.block{2}.iTrialGiven = [];
    data.block{2}.SzTrialGiven = length(data.block{2}.iTrialGiven); 
    % RAW data to read
    data.block{2}.raw = {  
                        };
    if size(data.block{2}.raw,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{2}.akg = { 
                        };
    if size(data.block{2}.akg,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.AKG)')
    end 
    
    
% % third block
    data.block{3}.info = 'r330_07_19_11_info_Block-3.mat'; 
    data.block{3}.iTrial = 1:9; 
    data.block{3}.SzTrial = length(data.block{3}.iTrial); 
    data.block{3}.iTrialGiven = [];
    data.block{3}.SzTrialGiven = length(data.block{3}.iTrialGiven); 
    % RAW data to read
    data.block{3}.raw = {     
                        };
    if size(data.block{3}.raw,1)~=data.block{3}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{3}.akg = { 
                        };
    if size(data.block{3}.akg,1)~=data.block{3}.SzTrialGiven
        error('error: size(data.AKG)')
    end     
    
    
    
end