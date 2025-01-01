if(cast_shadow){
    draw_sprite_ext(spr_shadow, 0, x + shadow_x_offset, y + shadow_y_offset, 1, 1, 0, c_black, SHADOW_ALPHA);
}

if(enable_draw_self){
    draw_self();
}