// Inherit the parent event
event_inherited();

var _result = false;

with(other){
    _result = player_give_weapon(other.index, other.ammo);
}

if(_result){
    instance_destroy();
}