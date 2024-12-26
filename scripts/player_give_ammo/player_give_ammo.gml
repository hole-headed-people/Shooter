function player_give_ammo(_amount){
    var _value = weapon_ammo + _amount;
    
    if(_value > weapon_max_ammo){
        weapon_ammo = weapon_max_ammo;
        
        
        
        return;
    }
}