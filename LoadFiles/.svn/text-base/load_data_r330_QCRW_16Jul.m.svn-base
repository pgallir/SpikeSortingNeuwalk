function data = load_data_r330_QCRW_16Jul(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
        '/NeuWalk Divas/#330/old/P0_110716_BRAINREC_QUAD_CRW_/TDT'];
    data.rat = 'r330';
% % first block
    data.block{1}.info = 'r330_07_16_11_info_Block-1.mat'; 
    data.block{1}.iTrial = 1:17; %1-17
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [1 4 5 6 7 9 10 11 12 13 14 15 16 17];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r330_07_16_11_v_1'
                             'r330_07_16_11_v_4'
                             'r330_07_16_11_v_5'
                             'r330_07_16_11_v_6'
                             'r330_07_16_11_v_7'
                             'r330_07_16_11_v_9'
                             'r330_07_16_11_v_10'
                             'r330_07_16_11_v_11'
                             'r330_07_16_11_v_12'
                             'r330_07_16_11_v_13'
                             'r330_07_16_11_v_14'
                             'r330_07_16_11_v_15'
                             'r330_07_16_11_v_16'
                             'r330_07_16_11_v_17'

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
                             ''
                             ''
                             ''
                             ''
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   

% % second block
    data.block{2}.info = 'r330_07_16_11_info_Block-2.mat'; 
    data.block{2}.iTrial = 1:11; % 18-28
    data.block{2}.SzTrial = length(data.block{2}.iTrial); 
    data.block{2}.iTrialGiven = [19 20 21 24 25 26 27 28];
    data.block{2}.SzTrialGiven = length(data.block{2}.iTrialGiven); 
    % RAW data to read
    data.block{2}.raw = {     
                             'r330_07_16_11_v_19'
                             'r330_07_16_11_v_20'
                             'r330_07_16_11_v_21'
                             'r330_07_16_11_v_24'
                             'r330_07_16_11_v_25'
                             'r330_07_16_11_v_26'
                             'r330_07_16_11_v_27'
                             'r330_07_16_11_v_28'
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
                             ''
                             ''
                             ''
                             ''
                        };
    if size(data.block{2}.akg,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.AKG)')
    end  
    
% % third block
    data.block{3}.info = 'r330_07_16_11_info_Block-3.mat'; 
    data.block{3}.iTrial = 1:26; %29-54
    data.block{3}.SzTrial = length(data.block{3}.iTrial); 
    data.block{3}.iTrialGiven = [29 30 31 32 35 37 38 39 44 53];
    data.block{3}.SzTrialGiven = length(data.block{3}.iTrialGiven); 
    % RAW data to read
    data.block{3}.raw = {     
                             'r330_07_16_11_v_29'
                             'r330_07_16_11_v_30'
                             'r330_07_16_11_v_31'
                             'r330_07_16_11_v_32'
                             'r330_07_16_11_v_35'
                             'r330_07_16_11_v_37'
                             'r330_07_16_11_v_38'
                             'r330_07_16_11_v_39'
                             'r330_07_16_11_v_44'
                             'r330_07_16_11_v_53'
                        };
    if size(data.block{3}.raw,1)~=data.block{3}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{3}.akg = { 
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
    if size(data.block{3}.akg,1)~=data.block{3}.SzTrialGiven
        error('error: size(data.AKG)')
    end      
    

end