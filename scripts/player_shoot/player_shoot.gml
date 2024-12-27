function player_shoot(){
	var _projectile_x = x + lengthdir_x(weapon_projectile_distance, facing_direction);
	var _projectile_y = y + lengthdir_y(weapon_projectile_distance, facing_direction) + weapon_arm_bob + weapon_offset;
	
	var _muzzle_flash = instance_create(_projectile_x, _projectile_y, obj_muzzle_flash);
	
	with(_muzzle_flash){
		image_angle = other.facing_direction;
	}
	
    repeat(weapon_projectile_number){
    	var _projectile = instance_create(_projectile_x, _projectile_y, weapon_projectile_object);
        var _direction = facing_direction + random_range(-weapon_max_accuracy, weapon_max_accuracy);
    	
    	with(_projectile){
            owner = other;
            damage = other.weapon_damage;
            
    		image_angle = _direction;
    		motion_set(_direction, 8);
    	}
        
        var _empty_bullet = instance_create(x, y, obj_empty_bullet);
        var _empty_bullet_direction = point_direction(x, y, x - facing_right * 10, y);
        
        with(_empty_bullet){
            motion_add(_empty_bullet_direction, 0.5);
        }
    }
	
	weapon_impact = weapon_max_impact;
	weapon_angular_impact = weapon_max_angular_impact;
    
    weapon_ammo -= 1;
    
    if(weapon_ammo == 0){
        player_start_reload();
    }
    
    weapon_is_cooldown = true;
}