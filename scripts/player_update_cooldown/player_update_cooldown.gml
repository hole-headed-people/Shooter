function player_update_cooldown(){
    if(weapon_is_cooldown){
        if(weapon_cooldown < weapon_max_cooldown){
            weapon_cooldown += 0.01;
        } else {
            weapon_cooldown = 0;
            
            weapon_is_cooldown = false;
        }
    }
}