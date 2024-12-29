event_inherited();

if(weapon_primary_index != -1){
    var _weapon = global.weapons[weapon_primary_index];
    
    var _weapon_sprite = _weapon[8];
    
    var _weapon_arm_distance = _weapon[3] - weapon_impact;
    
    var _weapon_x = lengthdir_x(_weapon_arm_distance, facing_direction);
    var _weapon_y = lengthdir_y(_weapon_arm_distance, facing_direction);
    
    var _weapon_offset = _weapon[10];
    
    var _weapon_angle = facing_direction + weapon_angular_impact * facing_right;
    
    draw_sprite_ext(_weapon_sprite, 0, x + _weapon_x, y + _weapon_y + _weapon_offset + weapon_arm_bob,  1, facing_right, _weapon_angle, c_white, 1);
}