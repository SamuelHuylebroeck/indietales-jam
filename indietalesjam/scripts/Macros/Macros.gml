// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro COLLISION_TILESIZE 16

enum PLAYER_STATE
{
	FREE,
	INTERACT,
	HURT,
	DIE
	

}

enum RESOURCE_STATE
{
	ON_FLOOR,
	CARRIED
}

enum TRAP_STATE
{
	INACTIVE,
	ACTIVE,
	TRIGGERED,
	COOLDOWN
}
