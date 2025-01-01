if(!check_collision_object_group(self, other)){
    return;
}

if(enable_rigidbody && other.enable_rigidbody){
    if(movable){
        push_from_object(other, 0.2);
    }
}