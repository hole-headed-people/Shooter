function push(_x, _y, _amount){
    if (x > _x && place_free(x + _amount, y)) {
        x += _amount;
    } else if (x < _x && place_free(x - _amount, y)) {
        x -= _amount;
    }

    if (y > _y && place_free(x, y + _amount)) {
        y += _amount;
    } else if (y < _y && place_free(x, y - _amount)) { 
        y -= _amount;
    }
}