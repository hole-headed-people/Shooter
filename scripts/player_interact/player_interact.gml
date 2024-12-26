function player_interact(){
    if(close_interactive == noone){
        return;
    }
    
    with(close_interactive){
        current_player = other;
        event_user(0);
    }
}