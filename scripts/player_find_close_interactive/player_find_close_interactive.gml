function player_find_close_interactive(){
    var _close_interactive = instance_nearest(x, y, obj_interactive);
    
    if(_close_interactive == noone){
        
        close_interactive = noone;
        
        return;
    }
    
    if(distance_to_object(_close_interactive) < interaction_radius){
        close_interactive = _close_interactive;
    } else {
        close_interactive = noone;
    }
}