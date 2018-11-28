/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x+15,y-10,o_NowayWall))
{
	move=-1;
}
if(place_meeting(x-15,y-10,o_NowayWall))		//If  it is about to collide with a vertical wall
{												//switch directions
	move=1;
}
if(place_meeting(x,y+10,o_Platform))
{
vsp=0;											//If it is on a platform  set vertical speed to  0
}
if(!place_meeting(x+25,y+25, o_Platform))
{												//Back and forth movement "AI"
move=-1;
}
if(!place_meeting(x-25, y+25, o_Platform))
{
move=1;
}
event_inherited();