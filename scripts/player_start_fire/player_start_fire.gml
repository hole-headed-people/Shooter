function player_start_fire(){
	if(weapon_index == -1){
        return;
    }
    
    if(weapon_ammo == 0){
        return;
    }
    
    if(weapon_is_cooldown){
        return;
    }
    
    if(weapon_type == WEAPON_TYPE.AUTOMATIC){
        weapon_is_firing = true;
        
        return;
    }
    
    player_shoot();
}