function check_collision_group(_group1, _group2){
    return global.groups[_group1][_group2] == 1 || global.groups[_group2, _group1] == 1;
}