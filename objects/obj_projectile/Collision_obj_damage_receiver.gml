if(other == owner){
    return;
}

with(other){
    apply_damage(other, other.damage, other.owner);
}

instance_create(x, y, obj_projectile_hit);

instance_destroy();