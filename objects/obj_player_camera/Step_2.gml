if(player == noone){
    return;
}

var _player_x = player.x;
var _player_y = player.y;

x = lerp(x, _player_x, 0.02);
y = lerp(y, _player_y, 0.02);

var _camera_view_width = camera_get_view_width(camera);
var _camera_view_height = camera_get_view_height(camera);

camera_set_view_pos(camera, x - _camera_view_width / 2, y - _camera_view_height / 2);