function create_disappearing_particle(_x, _y, _object, _direction, _speed){
    var _particle = instance_create(_x, _y, _object);
    
    with(_particle){
        motion_add(_direction, _speed);
    }
    
    return _particle;
}