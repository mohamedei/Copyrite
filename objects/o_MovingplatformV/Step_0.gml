/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y+walksp*move*10,o_NowayWall)||place_meeting(x,y+walksp*move*10,o_onehitkillobjects)||y>=vpos+540||y<=vpos-540)
{
	move*=-1;
}
vsp=walksp*move*global.bullettime;
y=y+vsp;
event_inherited();