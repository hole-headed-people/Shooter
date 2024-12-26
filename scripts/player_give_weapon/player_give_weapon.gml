function player_give_weapon(_index, _ammo){
    if(weapon_index != -1){
        return false;
    }
    
    player_set_weapon(_index);
    player_give_ammo(_ammo);
    
    return true;
}