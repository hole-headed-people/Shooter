function player_give_ammo(_amount){
    if(weapon_primary_index == -1){
        return false;
    }
    
    weapon_primary_reserve_ammo += _amount;
    
    if(weapon_is_reloading){
        return true;
    }
    
    if(weapon_primary_ammo == 0){
        player_start_reload();
    }
    
    return true;
}