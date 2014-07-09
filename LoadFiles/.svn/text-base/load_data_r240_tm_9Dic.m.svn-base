function data = load_data_r240_tm_9Dic(data,addr,user)

if strcmp(user,'JR') ||  strcmp(user,'JR-pc-lab')
    data.folder = [addr.RAW,'/rat 240/Treadmill/9 Dec 2010'];
    data.rat = 'r240';
    % % first block
    data.block{1}.info = ''; 
    data.block{1}.iTrial = [];
    data.block{1}.SzTrial = length(data.block{1}.iTrial); 
    data.block{1}.iTrialGiven = [];
    data.block{1}.SzTrialGiven = length(data.block{1}.iTrialGiven); 
    % RAW data to read
    data.block{1}.raw = {  };
    if size(data.block{1}.raw,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{1}.akg = {  };
    if size(data.block{1}.akg,1)~=data.block{1}.SzTrialGiven
        error('error: size(data.AKG)')
    end   
   
    % % second block
    data.block{2}.info = ''; 
    data.block{2}.iTrial = [];
    data.block{2}.SzTrial = length(data.block{2}.iTrial); 
    data.block{2}.iTrialGiven = [];
    data.block{2}.SzTrialGiven = length(data.block{2}.iTrialGiven); 
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
    
    % % third block
    data.block{3}.info = ''; 
    data.block{3}.iTrial = [];
    data.block{3}.SzTrial = length(data.block{3}.iTrial); 
    data.block{3}.iTrialGiven = [];
    data.block{3}.SzTrialGiven = length(data.block{3}.iTrialGiven); 
    % RAW data to read
    data.block{3}.raw = {  };                    
    if size(data.block{2}.raw,1)~=data.block{3}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{3}.akg = {  };
    if size(data.block{2}.akg,1)~=data.block{3}.SzTrialGiven
        error('error: size(data.AKG)')
    end 
    
    % % fourth block
    data.block{4}.info = ''; 
    data.block{4}.iTrial = [];
    data.block{4}.SzTrial = length(data.block{4}.iTrial); 
    data.block{4}.iTrialGiven = [];
    data.block{4}.SzTrialGiven = length(data.block{4}.iTrialGiven); 
    % RAW data to read
    data.block{4}.raw = {  };                    
    if size(data.block{4}.raw,1)~=data.block{4}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{4}.akg = {  };
    if size(data.block{4}.akg,1)~=data.block{4}.SzTrialGiven
        error('error: size(data.AKG)')
    end 
    
    % % fitfh block
    data.block{5}.info = 'r240_12_09_10_info_5.mat'; 
    data.block{5}.iTrial = 1:19;
    data.block{5}.SzTrial = length(data.block{5}.iTrial); 
    data.block{5}.iTrialGiven = [4 6 10 12 17 19];
    data.block{5}.SzTrialGiven = length(data.block{5}.iTrialGiven); 
    % RAW data to read
    data.block{5}.raw = {
                            'r240_12_09_10_raw_v_4.mat'
                            'r240_12_09_10_raw_v_6.mat'
                            'r240_12_09_10_raw_v_10.mat'
                            'r240_12_09_10_raw_v_12.mat'
                            'r240_12_09_10_raw_v_17.mat'
                            'r240_12_09_10_raw_v_19.mat'
                        };                    
    if size(data.block{5}.raw,1)~=data.block{5}.SzTrialGiven
        error('error: size(data.raw)')
    end
    % AKG data to read
    data.block{5}.akg = {
                            'TM_240_09_Dec_2010_04_'
                            'TM_240_09_Dec_2010_06_'
                            'TM_240_09_Dec_2010_10_'
                            'TM_240_09_Dec_2010_12_'
                            'TM_240_09_Dec_2010_17_'
                            'TM_240_09_Dec_2010_19_'
                         };
    if size(data.block{5}.akg,1)~=data.block{5}.SzTrialGiven
        error('error: size(data.AKG)')
    end     
    
    
elseif strcmp(user,'AP')
end    
    
