function player_set_weapon(_index){
    var weapon = global.weapons[_index];
    
    weapon_type = weapon[0];
    weapon_full_ammo = weapon[1];
    
    weapon_max_cooldown = weapon[2];
    
    weapon_arm_distance = weapon[3];
    
    weapon_projectile_distance = weapon[4];
    weapon_projectile_object = weapon[5];
    weapon_projectile_number = weapon[6];
    
    weapon_max_accuracy = weapon[7];
    
    weapon_sprite = weapon[8];
    weapon_ui_sprite = weapon[9];
    
    weapon_offset = weapon[10];
    
    weapon_max_impact = weapon[11];
    weapon_max_angular_impact = weapon[12];
    
	weapon_index = _index;
}