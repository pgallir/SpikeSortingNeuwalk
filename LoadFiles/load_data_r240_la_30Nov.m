function data = load_data_r240_la_30Nov(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')
    data.folder = [addr.RAW,'/rat 240/Ladderator/30 Nov 2010'];
    data.rat = 'r240';
    % % first block
    data.block{1}.info = 'r240_11_30_10_info_1.mat'; 
    data.block{1}.iTrial = 1:19;
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [3 4 5 7 8 9 10 11 15];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {
                            'r240_11_30_10_raw_v_3.mat'
                            'r240_11_30_10_raw_v_4.mat'
                            'r240_11_30_10_raw_v_5.mat'
                            'r240_11_30_10_raw_v_7.mat'
                            'r240_11_30_10_raw_v_8.mat'
                            'r240_11_30_10_raw_v_9.mat'
                            'r240_11_30_10_raw_v_10.mat'
                            'r240_11_30_10_raw_v_11.mat'
                            'r240_11_30_10_raw_v_15.mat'
                        };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = {
                            'LADDER_240_30_Nov_2010_03_'
                            'LADDER_240_30_Nov_2010_04_'
                            'LADDER_240_30_Nov_2010_05_'
                            'LADDER_240_30_Nov_2010_07_'
                            'LADDER_240_30_Nov_2010_08_'
                            'LADDER_240_30_Nov_2010_09_'
                            'LADDER_240_30_Nov_2010_10_'
                            'LADDER_240_30_Nov_2010_11_'
                            'LADDER_240_30_Nov_2010_15_'    
                        };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   

    % % second block
    data.block{2}.info = 'r240_11_30_10_info_2.mat'; 
    data.block{2}.iTrial = 20:41;
    data.block{2}.SzTrial = length(data.block{2}.iTrial); 
    data.block{2}.iTrialGiven = [25 27 30]; % 31 33]; missing vicon-s
    data.block{2}.SzTrialGiven = length(data.block{2}.iTrialGiven); 
    % RAW data to read
    data.block{2}.raw = {  
                             'r240_11_30_10_raw_v_25.mat'                                        
                             'r240_11_30_10_raw_v_27.mat'                                        
                             'r240_11_30_10_raw_v_30.mat'                                        
                             %'r240_11_30_10_raw_v_31.mat'                                                             
                             %'r240_11_30_10_raw_v_33.mat'   
                        };                    
    if size(data.block{2}.raw,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{2}.akg = { 
                            'LADDER_240_30_Nov_2010_25_'
                            'LADDER_240_30_Nov_2010_27_'
                            'LADDER_240_30_Nov_2010_30_'
                            %'LADDER_240_30_Nov_2010_31_'
                            %'LADDER_240_30_Nov_2010_33_'
                        };
    if size(data.block{2}.akg,1)~=data.block{2}.SzTrialGiven
        error('error: size(data.AKG)')
    end 

end    
    
