function player_toggle_weapon(){
    if(weapon_is_reloading){
        return false;
    }
    
    if(weapon_secondary_index == -1){
        return false;
    }
    
    var _primary_index = weapon_primary_index;
    var _primary_ammo = weapon_primary_ammo;
    var _primary_reserve_ammo = weapon_primary_reserve_ammo;
    
    weapon_primary_index = weapon_secondary_index;
    weapon_primary_ammo = weapon_secondary_ammo;
    weapon_primary_reserve_ammo = weapon_secondary_reserve_ammo;
    
    weapon_secondary_index = _primary_index;
    weapon_secondary_ammo = _primary_ammo;
    weapon_secondary_reserve_ammo = _primary_reserve_ammo;
    
    if(weapon_primary_ammo == 0){
        player_start_reload();
    }
    
    return true;
}