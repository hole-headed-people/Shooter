function player_update_automatic_fire() {
    if(weapon_type != WEAPON_TYPE.AUTOMATIC){
        return;
    }
    
    if(!weapon_is_firing){
        return;
    }
    
    if(weapon_ammo == 0){
        return;
    }
    
    if(weapon_is_cooldown){
        return;
    }
    
    player_shoot();
}