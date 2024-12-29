function player_reload(){
    var _weapon = global.weapons[weapon_primary_index];
    var _required_ammo = _weapon[1] - weapon_primary_ammo;
    
    if(_required_ammo < weapon_primary_reserve_ammo){
        var _remains = weapon_primary_reserve_ammo - _required_ammo;
        
        weapon_primary_ammo += _required_ammo;
        weapon_primary_reserve_ammo = _remains;
    } else {
        weapon_primary_ammo += weapon_primary_reserve_ammo;
        weapon_primary_reserve_ammo = 0;
    }
    
    //if(weapon_secondary_ammo > weapon_full_ammo){
    //    var _remains = weapon_secondary_ammo - weapon_full_ammo;
    //    
    //    weapon_ammo = weapon_full_ammo;
    //    weapon_secondary_ammo = _remains;
    //    
    //} else {
    //    weapon_ammo = weapon_secondary_ammo;
    //    weapon_secondary_ammo = 0;
    //}
}