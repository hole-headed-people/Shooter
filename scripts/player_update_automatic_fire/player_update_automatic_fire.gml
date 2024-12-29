function player_update_automatic_fire() {
    var _type = global.weapons[weapon_primary_index][0];
    
    if(_type != WEAPON_TYPE.AUTOMATIC){
        return;
    }
    
    if(!weapon_is_firing){
        return;
    }
    
    if(weapon_primary_ammo == 0){
        return;
    }
    
    if(weapon_is_cooldown){
        return;
    }
    
    player_shoot();
}