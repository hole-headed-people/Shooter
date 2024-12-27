event_inherited();

if(is_dead){
    return;
}

if(target == noone){
    return;
}

image_xscale = x < target.x ? 1 : -1;
mp_potential_step(target.x, target.y, 0.3, false);