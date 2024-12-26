function player_interact(){
    var _close_interactive = instance_nearest(x, y, obj_interactive)
    var _distance = distance_to_object(_close_interactive);
    
    if(_distance > interaction_radius){
        return;
    }
    
    with(_close_interactive){
        event_user(0);
    }
}