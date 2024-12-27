function apply_damage(_caller, _amount, _instigator){
    if(is_dead){
        return;
    }
    
    var _value = current_health - _amount;
    
    caller = _caller;
    damage = _amount;
    instigator = _instigator;
    
    if(_value <= 0){
        is_dead = true;
        
        set_health(0)
        
        event_user(0);
        event_user(1);
        
        return;
    }
    
    set_health(_value);
    
    event_user(0);
}