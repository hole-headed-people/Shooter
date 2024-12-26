function player_drop(){
    if(weapon_index == -1){
        return;
    }
    
    var _x = x + lengthdir_x(PLAYER_DROP_DISTANCE, facing_direction);
    var _y = y + lengthdir_y(PLAYER_DROP_DISTANCE, facing_direction);
    
    var _instance = instance_create(_x, _y, weapon_object);
    var _ammo = weapon_ammo + weapon_secondary_ammo;
    
    with(_instance){
        ammo = _ammo;
    }
    
    weapon_ammo = 0;
    weapon_secondary_ammo = 0;
    
    weapon_index = -1;
}