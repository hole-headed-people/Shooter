event_inherited();

if(speed > 0){
    speed -= braking_velocity;
    image_angle += angular_speed * random_offset;
}

image_alpha = alarm[0] / alarm_to_destroy;