function player_update_movement(){
	hspeed = x_axis * move_speed;
	vspeed = y_axis * move_speed;
	
	facing_right = (x < mouse_x) ? 1 : -1;
	image_xscale = facing_right
}