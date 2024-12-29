function player_update_input(){
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));

	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	
	key_fire_pressed = mouse_check_button_pressed(mb_left);
	key_fire_released = mouse_check_button_released(mb_left);
    
    key_interact_pressed = keyboard_check_pressed(ord("F"));
    
    key_reload = keyboard_check_pressed(ord("R"));
    
    key_drop = keyboard_check_pressed(ord("G"));
    
    key_toggle_weapon = keyboard_check_pressed(ord("Q"));

	facing_direction = point_direction(x, y, mouse_x, mouse_y);

	x_axis = key_right - key_left;
	y_axis = key_down - key_up;
	
	if(key_fire_pressed){
		player_start_fire();
	}
	
	if(key_fire_released){
		player_stop_fire();
	}
    
    if(key_interact_pressed){
        player_interact();
    }
    
    if(key_reload){
        player_start_reload();
    }
    
    if(key_drop){
        player_drop();
    }
    
    if(key_toggle_weapon){
        player_toggle_weapon();
    }
}