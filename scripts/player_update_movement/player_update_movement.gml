function player_update_movement(){
	hspeed = x_axis;
	vspeed = y_axis;
	
	facing_right = (x < mouse_x) ? 1 : -1;
	image_xscale = facing_right
}