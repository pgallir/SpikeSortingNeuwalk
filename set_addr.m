function addr = set_addr(addr,user)

if strcmp(user,'JR')
    addr.ROOT = '/media/DATI/uni/NeuWalk/WorkDir';
    addr.SORTING = [addr.ROOT,'/Sorting'];
    addr.LIB      = [addr.ROOT,'/3rdParty'];                              
    addr.RAW      = [addr.ROOT,'/RawData'];                         % here raw data
    addr.RIS      = [addr.ROOT,'/Ris'];
    addr.SRC      = [addr.SORTING,'/trunk/src_rats'];                         % here sources
    addr.LOADF    = [addr.SRC,'/LoadFiles'];
    % addr.WDENOISE = [addr.LIB,'/wave_denoise']; 
    addr.DETECT   = [addr.LIB,'/Detection_wavelet_ZN'];
    % addr.XML      = [addr.LIB,'/xml'];                                     % XML parser
    % addr.SPSORT   = [addr.LIB,'/SpikeSort']; 
    addr.WAVECLUS   = [addr.LIB, '/Wave_clus'];         % SPC sorting
    addr.BINNING = [addr.LIB, '/Binning'];         % firing rate
    addr.DETECT_RIS = [addr.RIS,'/Detection'];
    addr.SORT_RIS   = [addr.RIS,'/Sorting'];
    
elseif strcmp(user,'JR-pc-lab')
    addr.ROOT = '/media/DATI/Neuwalk/WorkDir';
    addr.SORTING = [addr.ROOT,'/Sorting'];
    addr.LIB      = [addr.ROOT,'/3rdParty'];                              
    addr.RAW      = [addr.ROOT,'/RawData'];                         % here raw data
    addr.RIS      = [addr.ROOT,'/Ris'];
    addr.SRC      = [addr.SORTING,'/trunk/src_rats'];                         % here sources
    addr.LOADF    = [addr.SRC,'/LoadFiles'];
    % addr.WDENOISE = [addr.LIB,'/wave_denoise']; 
    addr.DETECT   = [addr.LIB,'/Detection_wavelet_ZN'];
    % addr.XML      = [addr.LIB,'/xml'];                                     % XML parser
    % addr.SPSORT   = [addr.LIB,'/SpikeSort']; 
    addr.WAVECLUS   = [addr.LIB, '/Wave_clus'];         % SPC sorting
    addr.BINNING = [addr.LIB, '/Binning'];         % firing rate
    addr.DETECT_RIS = [addr.RIS,'/Detection'];
    addr.SORT_RIS   = [addr.RIS,'/Sorting'];
    
elseif strcmp(user,'AP')
    addr.ROOT = 'C:\PostDoc\Research Activity\NEUWALK_WorkDir';
    addr.SORTING = [addr.ROOT,'\Sorting'];
    addr.LIB      = [addr.ROOT,'\3rdParty'];                              
    addr.RAW      = [addr.ROOT,'\RawData'];                         % here raw data
    addr.RIS      = [addr.ROOT,'\Ris'];
    addr.SRC      = [addr.SORTING,'\trunk\src_rats'];                         % here sources
    addr.LOADF    = [addr.SRC,'\LoadFiles'];
%     addr.WDENOISE = [addr.LIB,'\wave_denoise']; 
    addr.DETECT   = [addr.LIB,'\Detection_wavelet_ZN'];
%     addr.XML      = [addr.LIB,'\xml'];                                     % XML parser
%     addr.SPSORT   = [addr.LIB,'\SpikeSort']; 
    addr.WAVECLUS   = [addr.LIB, '\Wave_clus'];         % SPC sorting
    addr.BINNING = [addr.LIB, '\Binning'];         % firing rate    
    addr.DETECT_RIS = [addr.RIS,'\Detection'];
    addr.SORT_RIS   = [addr.RIS,'\Sorting'];
end