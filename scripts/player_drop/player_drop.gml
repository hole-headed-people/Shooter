function player_drop(){
    if(weapon_primary_index == -1){
        return;
    }
    
    var _weapon = global.weapons[weapon_primary_index];
    
    var _x = x + lengthdir_x(PLAYER_DROP_DISTANCE, facing_direction);
    var _y = y + lengthdir_y(PLAYER_DROP_DISTANCE, facing_direction);
    
    var _instance = instance_create(_x, _y, _weapon[13]);
    
    var _ammo = weapon_primary_ammo + weapon_primary_reserve_ammo;
    
    with(_instance){
        ammo = _ammo;
    }
    
    weapon_primary_index = -1;
    
    weapon_primary_ammo = 0;
    weapon_primary_reserve_ammo = 0;
    
    player_toggle_weapon();
}