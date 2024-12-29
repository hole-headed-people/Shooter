function player_start_fire(){
	if(weapon_primary_index == -1){
        return;
    }
    
    if(weapon_primary_ammo == 0){
        return;
    }
    
    if(weapon_is_cooldown){
        return;
    }
    
    var _type = global.weapons[weapon_primary_index][0];
    
    if(_type == WEAPON_TYPE.AUTOMATIC){
        weapon_is_firing = true;
        
        return;
    }
    
    player_shoot();
}