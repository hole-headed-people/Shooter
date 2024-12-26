//Input

key_up = 0;
key_down = 0;

key_right = 0;
key_left = 0;

key_fire_pressed = 0;
key_fire_released = 0;

key_interact_pressed = 0;

x_axis = 0;
y_axis = 0;

facing_direction = 0;
facing_right = 1;

//Weapon

weapon_index = 0;

weapon_type = WEAPON_TYPE.SINGLE;
weapon_full_ammo = 0;

weapon_max_cooldown = 0;

weapon_arm_distance = 0;

weapon_projectile_distance = 0;
weapon_projectile_object = -1;
weapon_projectile_number = 0;

weapon_max_accuracy = 0;

weapon_sprite = -1;
weapon_ui_sprite = -1;

weapon_offset = 0;

weapon_max_impact = 0;
weapon_max_angular_impact = 0;

weapon_is_firing = false;

weapon_ammo = 0;
weapon_secondary_ammo = 0;

weapon_arm_bob = 0;
weapon_arm_bob_speed = 0.01;

weapon_cooldown = 0;
weapon_is_cooldown = false;

weapon_impact = 0;
weapon_angular_impact = 0;

//Interaction

interaction_radius = 0;

player_set_weapon(1);
weapon_ammo = weapon_full_ammo;