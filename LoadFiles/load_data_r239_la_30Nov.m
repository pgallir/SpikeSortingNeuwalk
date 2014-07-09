function data = load_data_r239_la_30Nov(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')

    data.Ratfolder = [addr.RAW,'/rat 239'];
    data.folder = [data.Ratfolder,'/Ladderator/30 Nov 2010'];
    data.rat = 'r239';
    % % first block
    data.block{1}.info = 'r239_11_30_10_info_1.mat'; 
    data.block{1}.iTrial = 1:18;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [2 3 4 5 6 7 14 15];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {  
                             'r239_11_30_10_raw_v_2.mat'                                        
                             'r239_11_30_10_raw_v_3.mat'                                        
                             'r239_11_30_10_raw_v_4.mat'                                        
                             'r239_11_30_10_raw_v_5.mat'                                                             
                             'r239_11_30_10_raw_v_6.mat' 
                             'r239_11_30_10_raw_v_7.mat'                                        
                             'r239_11_30_10_raw_v_14.mat'                                                             
                             'r239_11_30_10_raw_v_15.mat' 
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = { 
                            '239_LADDER_30_11_2010_02_'
                            '239_LADDER_30_11_2010_03_'
                            '239_LADDER_30_11_2010_04_'
                            '239_LADDER_30_11_2010_05_'
                            '239_LADDER_30_11_2010_06_'
                            '239_LADDER_30_11_2010_07_'
                            '239_LADDER_30_11_2010_14_'
                            '239_LADDER_30_11_2010_15_'
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   

    % % second block
    data.block{2}.info = []; 
    data.block{2}.iTrial = [];
    data.block{2}.SzTrial = length(data.block{2}.iTrial); 
    data.block{2}.iTrialGiven = [];
    data.block{2}.SzTrialGiven = 0; 
    % RAW data to read
    data.block{2}.raw = {  };
    if size(data.block{2}.raw,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{2}.akg = {  };
    if size(data.block{2}.akg,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.AKG)')
    end     
 
end
