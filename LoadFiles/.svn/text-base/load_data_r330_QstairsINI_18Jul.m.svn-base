function data = load_data_r330_QstairsINI_18Jul(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
        '/NeuWalk Divas/#330/old/P0_110718_BRAINREC_QUAD_STAIRS_INI_/TDT'];
    data.rat = 'r330';
% % first block
    data.block{1}.info = 'r330_07_18_11_info_Block-1.mat'; 
    data.block{1}.iTrial = 1:35; 
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [4 5 6 7 9 10 12 13 15 23 25 26 27 29 30 31 34 35];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r330_07_18_11_v_4'
                             'r330_07_18_11_v_5'
                             'r330_07_18_11_v_6'
                             'r330_07_18_11_v_7'
                             'r330_07_18_11_v_9'
                             'r330_07_18_11_v_10'
                             'r330_07_18_11_v_12'
                             'r330_07_18_11_v_13'
                             'r330_07_18_11_v_15'
                             'r330_07_18_11_v_23'
                             'r330_07_18_11_v_25'
                             'r330_07_18_11_v_26'
                             'r330_07_18_11_v_27'
                             'r330_07_18_11_v_29'
                             'r330_07_18_11_v_30'
                             'r330_07_18_11_v_31'
                             'r330_07_18_11_v_34'
                             'r330_07_18_11_v_35'
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
                             ''
                             ''
                             ''
                             ''
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   
end