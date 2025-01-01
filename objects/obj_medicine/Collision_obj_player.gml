event_inherited();

var _result = false;

with(other){
    _result = player_heal(other.amount);
}

if(_result){
    instance_destroy();
}