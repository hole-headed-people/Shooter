function player_heal(_amount){
    if(current_health == full_health){
        return false;
    }
    
    var _value = current_health + _amount;
    
    if(_value > full_health){
        set_health(full_health);
        
        return true;
    }
    
    set_health(_value);
    
    return true;
}