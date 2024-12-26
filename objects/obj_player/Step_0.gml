player_update_input();
player_update_movement();
player_update_animation();

if(weapon_is_cooldown){
    if(weapon_cooldown < weapon_max_cooldown){
        weapon_cooldown += delta_time;
    } else {
        weapon_cooldown = 0;
        
        weapon_is_cooldown = false;
    }
}

weapon_impact /= 1.2;
weapon_angular_impact /= 1.4;

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