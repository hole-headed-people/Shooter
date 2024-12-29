function player_start_reload(){
    var _weapon = global.weapons[weapon_primary_index];
    
    if(weapon_primary_ammo == _weapon[1]){
        return;
    }
    
    if(weapon_primary_reserve_ammo == 0){
        return;
    }
    
    weapon_is_reloading = true;
    alarm[0] = RELOAD_TIME;
}