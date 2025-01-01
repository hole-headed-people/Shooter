if(sprite_index == spr_supply_crate_destroying){
    if(is_dead){
        instance_destroy();
        
        create_drop_items(drop_number, drop_item_types, x, y, 5);
    }
}