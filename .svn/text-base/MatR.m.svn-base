function rec = MatR(rec,iTrial)
        % set vector time with neural freq
        time = rec.RawTime(1):... 
               1/rec.Fc_R:... % sampling time
               rec.RawTime(2);
        % get Init time of Sync in seconds   
        if  rec.ANA(1,end) < 1  % Sync on 0           
            In  = rec.vicon(2,2*iTrial-1);
        else % Sync yet on 1
            In  = rec.vicon(2,2*iTrial-1) + ... 
                  rec.ANA(1,1)/rec.Fc_A; % Sync time plus frame of Kin 
        end

        Fin  = rec.vicon(2,2*iTrial-1) + ...
               rec.ANA(end,1)/rec.Fc_A; % Sync time plus frame of Kin 
    
        [ti ti_ind] = min(abs(time-...
                        In)); 
                    
        [te te_ind] = min(abs(time-... 
                        Fin));                     
        
        rec.tRaw = time(ti_ind:te_ind);
        rec.tKIN = In:1/rec.Fc_K:Fin; 
        rec.tANA = In:1/rec.Fc_A:Fin;         
        rec.Raw = rec.Raw(ti_ind:te_ind,:);
        rec.Filt = rec.Filt(ti_ind:te_ind,:);
return