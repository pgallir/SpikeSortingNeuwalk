function h = iCH_Run(addr,data,rec,iTrial,iCH)       

% for each channel do it...

cd(addr.SRC)            
h = elab_signal_iCH(data,rec,addr,iTrial,iCH);     
cd(addr.SRC) 

% print and save Quiroga fig
f(1) = figure('visible','off'); 
cd([addr.WAVECLUS]), cd('Batch_files') % find the function Do_clustering_JR2001
    plot_sort_JR2011(h,rec,iCH,2); 
cd(data.folder); cd ..; cd('Neural_SORTED') % -- in this way Data is structured
saveas(f(1),[h.file,'.jpg'])
cd(addr.SRC)

if ~h.EMPTY
    % save sorting results    
    cd(data.folder); cd ..; cd('Neural_SORTED') % -- in this way Data is structured
        outfile=['SR_' h.file];
            handles.file = h.file; 
            handles.Fc = h.Fc; 
            handles.RawTime = rec.RawTime; 
            handles.cluster_class = h.cluster_class; 
            handles.classM = h.classM; 
            handles.classTM = h.classTM; 
            handles.PERC = h.PERC;
            handles.tFR = h.tFR; 
            handles.FR = h.FR;                   
        save(outfile, 'handles')            
        clear handles
    cd(h.addr.SRC)    
    % delete unused files
    cd(h.addr.SORT_RIS)
        delete('*dg*')
        delete('*run')        
    cd(h.addr.SRC)    
end 

% save memory
close(f(1)) 
cd(addr.SRC) 