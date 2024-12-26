function player_update_animation(){
	var _is_moving = hspeed != 0 || vspeed != 0;
	
	if(_is_moving){
		weapon_arm_bob = sin(current_time * weapon_arm_bob_speed);
	} else {
		
	}
}