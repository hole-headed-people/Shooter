var _weapon_arm_distance = weapon_arm_distance - weapon_impact;

var _weapon_x = lengthdir_x(_weapon_arm_distance, facing_direction);
var _weapon_y = lengthdir_y(_weapon_arm_distance, facing_direction);

var _weapon_angle = facing_direction + weapon_angular_impact * facing_right;

draw_self();
draw_sprite_ext(weapon_sprite, 0, x + _weapon_x, y + _weapon_y + weapon_arm_bob, 1, facing_right, facing_direction + weapon_angular_impact, c_white, 1);