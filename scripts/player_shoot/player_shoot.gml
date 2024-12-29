function player_shoot(){
    var _weapon = global.weapons[weapon_primary_index];
    
    var _projectile_distance = _weapon[4];
    var _offset = _weapon[10];
    var _accuracy = _weapon[7];
    
    var _projectile_object = _weapon[5];
    
    var _impact = _weapon[11];
    var _angular_impact = _weapon[12];
    
    var _damage = _weapon[14];
    
	var _projectile_x = x + lengthdir_x(_projectile_distance, facing_direction);
	var _projectile_y = y + lengthdir_y(_projectile_distance, facing_direction) + weapon_arm_bob + _offset;
	
	var _muzzle_flash = instance_create(_projectile_x, _projectile_y, obj_muzzle_flash);
	
	with(_muzzle_flash){
		image_angle = other.facing_direction;
	}
	
    repeat(_weapon[6]){
    	var _projectile = instance_create(_projectile_x, _projectile_y, _projectile_object);
        var _direction = facing_direction + random_range(-_accuracy, _accuracy);
    	
    	with(_projectile){
            owner = other;
            damage = _damage;
            
    		image_angle = _direction;
    		motion_set(_direction, 8);
    	}
        
        var _empty_bullet_direction = point_direction(x, y, x - facing_right * 10, y);
        create_disappearing_particle(x, _projectile_y, obj_empty_bullet, _empty_bullet_direction, 0.5);
    }
	
	weapon_impact = _impact;
	weapon_angular_impact = _angular_impact;
    
    weapon_primary_ammo -= 1;
    
    if(weapon_primary_ammo == 0){
        player_start_reload();
    }
    
    weapon_is_cooldown = true;
}