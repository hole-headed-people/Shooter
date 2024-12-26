//0: type (SINGLE, AUTOMATIC)
//1: max ammo
//2: max cooldown
//3: arm distance
//4: projectile distance
//5: projectile object
//6: projectile number
//7: impact
//8: sprite
//9: ui sprite
//10: offset y

//Pistol

global.weapons[0][0] = WEAPON_TYPE.SINGLE;
global.weapons[0][1] = 12;
global.weapons[0][2] = 0.5;
global.weapons[0][3] = 5;
global.weapons[0][4] = 10;
global.weapons[0][5] = obj_projectile;
global.weapons[0][6] = 1;
global.weapons[0][7] = 2;
global.weapons[0][8] = spr_player_pistol;
global.weapons[0][9] = spr_pistol;
global.weapons[0][10] = 0;

//MP5

global.weapons[1][0] = WEAPON_TYPE.AUTOMATIC;
global.weapons[1][1] = 30;
global.weapons[1][2] = 0.2;
global.weapons[1][3] = 2;
global.weapons[1][4] = 6;
global.weapons[1][5] = obj_projectile;
global.weapons[1][6] = 1;
global.weapons[1][7] = 2;
global.weapons[1][8] = spr_player_mp5;
global.weapons[1][9] = spr_mp5;
global.weapons[1][10] = 4;