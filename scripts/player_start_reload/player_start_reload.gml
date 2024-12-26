function player_start_reload(){
    if(weapon_ammo == weapon_full_ammo){
        return;
    }
    
    if(weapon_secondary_ammo == 0){
        return;
    }
    
    weapon_is_reloading = true;
    alarm[0] = RELOAD_TIME;
}