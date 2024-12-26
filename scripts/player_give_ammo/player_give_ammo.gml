function player_give_ammo(_amount){
    if(weapon_index == -1){
        return false;
    }
    
    var _value = weapon_ammo + _amount;
    
    if(weapon_ammo == 0 && !weapon_is_reloading){
        weapon_secondary_ammo += _amount;
        
        player_start_reload();
        
        return true;
    }
    
    if(_value > weapon_full_ammo){
        weapon_ammo = weapon_full_ammo;
        weapon_secondary_ammo += _value - weapon_full_ammo;
        
        return true;
    }
    
    weapon_ammo += _value;
    
    return true;
}