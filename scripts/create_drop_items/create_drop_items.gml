function create_drop_items(_number, _types, _x, _y, _radius){
    repeat(_number){
        var _random_item_type = _types[irandom(array_length(_types) - 1)];
        var _random_direction = irandom(360);
        
        var _item = get_item(_random_item_type);
        
        var _probalility = random_range(0.0, 1.0);
        
        if(_probalility > _item[2]){
            continue;
        }
        
        var _item_x = x + lengthdir_x(_radius, _random_direction);
        var _item_y = y + lengthdir_y(_radius, _random_direction);
        
        instance_create(_item_x, _item_y, _item[1]);
    }
}