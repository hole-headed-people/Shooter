function get_item(_name){
    for(var _i = 0; _i < array_length(global.items); _i++){
        var _item = global.items[_i];
        
        if(_item[0] != _name){
            continue;
        }
        
        return _item;
    }
    
    return -1;
}