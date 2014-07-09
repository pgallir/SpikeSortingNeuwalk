function data = load_data_r330_Qlad_6Jul(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.folder = [addr.RAW,... 
        '/NeuWalk Divas/#330/old/P0_110706_BRAINRECORDING_QUAD_LADDER_/TDT'];
    data.rat = 'r330';
    % % first block
    data.block{1}.info = 'r330_07_06_11_info_Block-1.mat'; 
    data.block{1}.iTrial = 1:29;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [2 3 4 5 6 8 17 18 19 24];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {     
                             'r330_07_06_11_v_2.mat'                                         
                             'r330_07_06_11_v_3.mat'
                             'r330_07_06_11_v_4.mat'
                             'r330_07_06_11_v_5.mat'
                             'r330_07_06_11_v_6.mat'
                             'r330_07_06_11_v_8.mat'
                             'r330_07_06_11_v_17.mat'
                             'r330_07_06_11_v_18.mat'
                             'r330_07_06_11_v_19.mat'
                             'r330_07_06_11_v_24.mat'                             
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
    

end