event_inherited();

if(is_dead){
    return;
}

draw_sprite_ext(spr_variant_growth, growth_index, x, y, image_xscale, 1, growth_angle + sin(current_time * 0.001), c_red, 1);