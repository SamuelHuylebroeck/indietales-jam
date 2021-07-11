// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro COLLISION_TILESIZE 16
#macro RANDOMIZE false

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
	ARMED,
	TRIGGERED,
	ACTIVATING,
	ACTIVE,
	
}

#macro PARTICLE_VOID_BRIGHT make_color_rgb(156,70,116)
#macro PARTICLE_VOID_DARK make_color_rgb(88,20,89)

#macro PARTICLE_GREEN_BRIGHT make_color_rgb(95,199,93)
#macro PARTICLE_GREEN_DARK make_color_rgb(32,54,113)

enum SPEED_BOOST_STATE
{
	AVAILABLE,
	ACTIVE,
	COOLDOWN
}
