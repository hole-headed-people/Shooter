event_inherited();

player_update_input();
player_update_movement();
player_update_animation();
player_update_cooldown();
player_update_automatic_fire();

player_find_close_interactive();

weapon_impact /= 1.2;
weapon_angular_impact /= 1.4;