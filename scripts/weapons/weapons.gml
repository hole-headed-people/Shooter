//0: type (SINGLE, AUTOMATIC)
//1: max ammo
//2: max cooldown
//3: arm distance
//4: projectile distance
//5: projectile object
//6: projectile number
//7: accuracy
//8: sprite
//9: ui sprite
//10: offset
//11: impact
//12: angular impact
//13: drop

//Pistol

global.weapons[0][0] = WEAPON_TYPE.SINGLE;
global.weapons[0][1] = 12;
global.weapons[0][2] = 0.08;
global.weapons[0][3] = 4;
global.weapons[0][4] = 8;
global.weapons[0][5] = obj_projectile;
global.weapons[0][6] = 1;
global.weapons[0][7] = 2;
global.weapons[0][8] = spr_player_pistol;
global.weapons[0][9] = spr_pistol;
global.weapons[0][10] = 0;
global.weapons[0][11] = 2;
global.weapons[0][12] = 60;
global.weapons[0][13] = obj_pistol;

//MP5

global.weapons[1][0] = WEAPON_TYPE.AUTOMATIC;
global.weapons[1][1] = 30;
global.weapons[1][2] = 0.05;
global.weapons[1][3] = 2;
global.weapons[1][4] = 6;
global.weapons[1][5] = obj_projectile;
global.weapons[1][6] = 1;
global.weapons[1][7] = 2;
global.weapons[1][8] = spr_player_mp5;
global.weapons[1][9] = spr_mp5;
global.weapons[1][10] = 4;
global.weapons[1][11] = 2;
global.weapons[1][12] = 20;
global.weapons[1][13] = obj_mp5;

//Gun

global.weapons[2][0] = WEAPON_TYPE.SINGLE;
global.weapons[2][1] = 8;
global.weapons[2][2] = 0.1;
global.weapons[2][3] = 3;
global.weapons[2][4] = 7;
global.weapons[2][5] = obj_projectile;
global.weapons[2][6] = 2;
global.weapons[2][7] = 8;
global.weapons[2][8] = spr_player_gun;
global.weapons[2][9] = spr_gun;
global.weapons[2][10] = 4;
global.weapons[2][11] = 2;
global.weapons[2][12] = 30;
global.weapons[2][13] = obj_gun;
global.weapons[1][12] = 20;