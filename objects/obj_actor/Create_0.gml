current_health = 0;
is_dead = false;

damage = 0;
caller = noone;
instigator = noone;
hit_direction = -1;

if(fixed_depth != -1){
    depth = fixed_depth;
}

if(set_full_health_in_start){
    set_health(full_health);
}