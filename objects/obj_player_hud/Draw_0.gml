if(player == noone){
    return;
}

var _x = player.x;
var _y = player.y;

if(player.weapon_is_reloading){
    draw_sprite(spr_reload_bar, (player.weapon_reloading_time * 15) / RELOAD_TIME, _x, _y - RELOAD_BAR_HEIGHT);
}

if(player.close_interactive != noone){
    draw_sprite_ext(spr_selection, 0, player.close_interactive.x, player.close_interactive.y - 8, 1, 1, 0, c_white, 0.5);;
}