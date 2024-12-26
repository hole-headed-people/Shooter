function player_reload(){
    if(weapon_secondary_ammo > weapon_full_ammo){
        var _remains = weapon_secondary_ammo - weapon_full_ammo;
        
        weapon_ammo = weapon_full_ammo;
        weapon_secondary_ammo = _remains;
        
    } else {
        weapon_ammo = weapon_secondary_ammo;
        weapon_secondary_ammo = 0;
    }
}