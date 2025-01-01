if(sprite_index == spr_variant_destroy){
    if(is_dead){
        instance_destroy();
        
        create_drop_items(drop_number, drop_item_types, x, y, 5);
    }
}