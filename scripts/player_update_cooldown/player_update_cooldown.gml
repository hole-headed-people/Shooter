function player_update_cooldown(){
    var _weapon = global.weapons[weapon_primary_index];
    
    if(weapon_is_cooldown){
        if(weapon_cooldown < _weapon[2]){
            weapon_cooldown += 0.01;
        } else {
            weapon_cooldown = 0;
            
            weapon_is_cooldown = false;
        }
    }
}