if(player == noone){
    return;
}

var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);

draw_sprite_ext(spr_crosshair, 0, _mouse_x, _mouse_y, 1, 1, 0, c_white, 0.5);
draw_sprite(spr_health_bar, (player.current_health * 31) / player.full_health, 12, GUI_HEIGHT - 16);

if(player.weapon_primary_index == -1){
    return;
}

draw_set_font(fnt_hud);
draw_set_halign(fa_left);

var _weapon = global.weapons[player.weapon_primary_index];

var _sprite = _weapon[9];

var _ammo = player.weapon_primary_ammo;
var _reserve_ammo = player.weapon_primary_reserve_ammo;

draw_text_color(30, GUI_HEIGHT - 38, string(_ammo) + " / " + string(_reserve_ammo), c_white, c_white, c_white, c_white, 1);

draw_sprite_ext(_sprite, 0, 17, GUI_HEIGHT - 29, 1, 1, 0, c_black, 0.5);
draw_sprite(_sprite, 0, 16, GUI_HEIGHT - 30);

var _secondary_weapon_index = player.weapon_secondary_index;

if(_secondary_weapon_index == -1){
    return;
}

var _secondary_weapon = global.weapons[_secondary_weapon_index];
var _secondary_sprite = _secondary_weapon[9];

draw_sprite_ext(_secondary_sprite, 0, 16, GUI_HEIGHT - 40, 1, 1, 0, c_black, 1);