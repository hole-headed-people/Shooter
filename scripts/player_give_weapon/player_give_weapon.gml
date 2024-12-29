function player_give_weapon(_index, _ammo){
    if(weapon_primary_index != -1){
        if(weapon_secondary_index != -1 || weapon_secondary_index == _index){
            return false;
        }
        
        weapon_secondary_index = _index;
        weapon_secondary_reserve_ammo = _ammo;
        
        return true;
    }
    
    player_set_weapon(_index);
    player_give_ammo(_ammo);
    
    return true;
}