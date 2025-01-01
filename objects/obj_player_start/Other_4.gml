var _player = instance_create(x, y, obj_player);
var _player_hud = instance_create(0, 0, obj_player_hud);
var _player_camera = instance_create(x, y, obj_player_camera);

with(_player_hud){
    player = _player;
}

with(_player_camera){
    player = _player;
}