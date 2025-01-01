event_inherited();

if(!check_collision_object_group(self, other)){
    return;
}

var _result = false;

with(other){
    _result = apply_damage(other, other.damage, other.owner);
}

if(_result){
    instance_destroy(); 
}