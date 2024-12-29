event_inherited();

//Input

key_up = 0;
key_down = 0;

key_right = 0;
key_left = 0;

key_fire_pressed = 0;
key_fire_released = 0;

key_interact_pressed = 0;

key_reload = 0;

key_drop = 0;

key_toggle_weapon = 0;

x_axis = 0;
y_axis = 0;

facing_direction = 0;
facing_right = 1;

//Movement
move_speed = 0.7;

//Weapon

weapon_primary_index = -1;
weapon_secondary_index = -1;

weapon_is_firing = false;

weapon_primary_ammo = 0;
weapon_primary_reserve_ammo = 0;

weapon_secondary_ammo = 0;
weapon_secondary_reserve_ammo = 0;

weapon_arm_bob = 0;
weapon_arm_bob_speed = 0.01;

weapon_cooldown = 0;
weapon_is_cooldown = false;

weapon_impact = 0;
weapon_angular_impact = 0;

weapon_is_reloading = false;
weapon_reloading_time = 0;

//Interaction

close_interactive = noone;
interaction_radius = 10;

set_health(full_health);

show_debug_overlay(true);