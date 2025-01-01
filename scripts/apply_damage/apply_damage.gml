function apply_damage(_caller, _amount, _instigator){
    if(!can_be_damaged){
        return false;
    }
    
    if(is_dead){
        return false;
    }
    
    var _value = current_health - _amount;
    
    caller = _caller;
    damage = _amount;
    instigator = _instigator;
    hit_direction = point_direction(_caller.x, _caller.y, x, y);
    
    if(_value <= 0){
        is_dead = true;
        
        set_health(0)
        
        event_user(0);
        event_user(1);
        
        return true;
    }
    
    set_health(_value);
    
    event_user(0);
    
    return true;
}