if(player == noone){
    return;
}

var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);

draw_sprite_ext(spr_crosshair, 0, _mouse_x, _mouse_y, 1, 1, 0, c_white, 0.5);

draw_sprite(spr_health_bar, (player.current_health * 32) / player.full_health, 12, GUI_HEIGHT - 16);

draw_set_font(fnt_hud);
draw_set_halign(fa_left);

if(player.weapon_index == -1){
    return;
}

draw_text_color(30, GUI_HEIGHT - 38, string(player.weapon_ammo) + " / " + string(player.weapon_secondary_ammo), c_white, c_white, c_white, c_white, 1);
draw_sprite(player.weapon_ui_sprite, 0, 16, GUI_HEIGHT - 30);