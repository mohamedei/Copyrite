/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x+walksp*move*10,y,o_NowayWall)||place_meeting(x+walksp*move*10,y,o_onehitkillobjects)||x>=xpos+960||x<=xpos-960)
{
	move*=-1;
}
hsp=walksp*move*global.bullettime;
x=x+hsp;
event_inherited();