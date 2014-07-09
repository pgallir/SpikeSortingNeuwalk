function data = load_data(rat,data,addr)

switch rat
    
    % beast
    case 238        
        [data,~,~] = load_data_r238(data,addr,'update_data');     
    case 239        
        [data,~,~] = load_data_r239(data,addr,'update_data'); 
    case 240
        [data,~,~] = load_data_r240(data,addr,'update_data');     
    % divas!! 
    case 327        
        [data,~,~] = load_data_r327(data,addr,'update_data');     
    case 330        
        [data,~,~] = load_data_r330(data,addr,'update_data'); 
    case 332
        [data,~,~] = load_data_r332(data,addr,'update_data');     
    case 329
        [data,~,~] = load_data_r329(data,addr,'update_data');   
    case 333
        [data,~,~] = load_data_r333(data,addr,'update_data'); 
    case 334
        [data,~,~] = load_data_r334(data,addr,'update_data');         
    case 335
        [data,~,~] = load_data_r335(data,addr,'update_data');  
    case 336
        [data,~,~] = load_data_r336(data,addr,'update_data');   
    % 2.0    
    case 213
        [data,~,~] = load_data_r213(data,addr,'update_data');   
    case 214
        [data,~,~] = load_data_r214(data,addr,'update_data');   
    case 215
        [data,~,~] = load_data_r215(data,addr,'update_data');   
    case 216
        [data,~,~] = load_data_r216(data,addr,'update_data');   
    case 217
        [data,~,~] = load_data_r217(data,addr,'update_data');   
    case 218
        [data,~,~] = load_data_r218(data,addr,'update_data');           
    case 219
        [data,~,~] = load_data_r219(data,addr,'update_data');   
    case 220
        [data,~,~] = load_data_r220(data,addr,'update_data');           
    % PILOT
    case 429
        [data,~,~] = load_data_r429(data,addr,'update_data');   % potrebbe contenere un errore... se usi questi dati prestaci attenzione 
        
    otherwise
        warning('load:data',['the rat ', int2str(rat), ' is not in the list.'])
end