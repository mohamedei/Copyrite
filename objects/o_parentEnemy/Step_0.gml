/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(HP<=0)
	instance_destroy();

if(hurt==1)
	{
	animspeed++;
	if((animspeed>=0&&animspeed<=10/global.bullettime)||(animspeed>=20/global.bullettime&&animspeed<=30/global.bullettime)||(animspeed>=40/global.bullettime&&animspeed<=50/global.bullettime))
	{alpha=0;}
	else{alpha=1;}		//flashing animation for damage
	}
	else {alpha=1;}
if(animspeed==30/global.bullettime)
{
	animspeed=0;
	hurt=0;
}
hsp=walksp*move;
//if(abs(o_Player.x-x) <= view_wview[0]/1.5 && abs(o_Player.y-y) <= view_hview[0]/1.5)
{
	
if(!place_meeting(x,y+vsp,o_NowayWall)){
y=y+(vsp)*global.bullettime;			//collision handling
}
if(!place_meeting(x+move*walksp,y,o_NowayWall)){
x=x+(move*walksp)*global.bullettime;
}
}
