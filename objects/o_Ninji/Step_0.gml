/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(instance_exists(o_Player))
{
if(o_Player.y<y-20&&y-o_Player.y<120&&o_Player.x-x>-80&&o_Player.x-x<80)	//if  a player is above the enemy
{
	if(o_Player.x>x)
	{
		if(place_meeting(x-64,y+64,o_Platform)&&!place_meeting(x-32,y-32,o_Platform))	//if it will not fall off the  edge
		walksp=-dashsp;																	//dash
		else
		walksp=0;
	}
	else
	{
		if(place_meeting(x+64,y+64,o_Platform)&&!place_meeting(x+32,y-32,o_Platform))
		walksp=+dashsp;
		else
		walksp=0;
	}
}
else
{
walksp=0;
}

}

	 