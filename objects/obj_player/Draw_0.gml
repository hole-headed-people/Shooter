event_inherited();

draw_self();

if(weapon_index != -1){
    var _weapon_arm_distance = weapon_arm_distance - weapon_impact;
    
    var _weapon_x = lengthdir_x(_weapon_arm_distance, facing_direction);
    var _weapon_y = lengthdir_y(_weapon_arm_distance, facing_direction);
    
    var _weapon_angle = facing_direction + weapon_angular_impact * facing_right;
    
    draw_sprite_ext(weapon_sprite, 0, x + _weapon_x, y + _weapon_y + weapon_offset + weapon_arm_bob,  1, facing_right, _weapon_angle, c_white, 1);
}

if(weapon_is_reloading){
    draw_sprite(spr_reload_bar, (alarm[0] * 15) / RELOAD_TIME, x, y - RELOAD_BAR_HEIGHT);
}

if(close_interactive != noone){
    draw_sprite_ext(spr_selection, 0, close_interactive.x, close_interactive.y - 8, 1, 1, 0, c_white, 0.5);;
}