event_inherited();

if(is_dead){
    return;
}

if(target == noone){
    return;
}

var _speed = distance_to_object(target) > attacking_radius ? move_speed : attacking_speed;

image_xscale = x < target.x ? 1 : -1;
mp_potential_step(target.x, target.y, _speed, false);