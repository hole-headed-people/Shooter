function player_shoot(){
	var _projectile_x = x + lengthdir_x(weapon_projectile_distance, facing_direction);
	var _projectile_y = y + lengthdir_y(weapon_projectile_distance, facing_direction);
	
	var _muzzle_flash = instance_create_layer(_projectile_x, _projectile_y,"Instances", obj_muzzle_flash);
	
	with(_muzzle_flash){
		image_angle = other.facing_direction;
	}
	
    repeat(weapon_projectile_number){
    	var _projectile = instance_create_layer(_projectile_x, _projectile_y, "Instances", weapon_projectile_object);
        var _direction = facing_direction + random_range(-weapon_max_impact, weapon_max_impact);
    	
    	with(_projectile){
    		image_angle = _direction;
    		motion_set(_direction, 8);
    	}
    }
	
	weapon_impact = 2;
	weapon_angular_impact = 60;
    
    weapon_ammo -= 1;
}