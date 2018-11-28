/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(instance_exists(o_Player)){
if(x<o_Player.x&&move ==1&&o_Player.y>y)
{											//If the player is in  the same direction as movement 
	vsp=1;									//swoop down
}
if(x>o_Player.x&&move==-1&&o_Player.y>y)
{
	vsp=1;
}
if(place_meeting(x,y+16,o_NowayWall)||place_meeting(x,y-16,o_NowayWall))
{																//wall collision handling
	vsp=0;
}

if(x>o_Player.x&&move ==1)
{										//if the  player  is not in same direction as motion
	vsp=-1;								//move upwards and start a counter
}
if(x<o_Player.x&&move==-1)
{
	vsp=-1;
}
if(x>o_Player.x&&move==1||x<o_Player.x&&move==-1)
counter++
if(counter==30)							//while the counter is on  keep moving opposite to the player
{										//otherwise reverse motion and reset counter
	move*=-1;
	counter= 0;
}
if(abs(o_Player.x-x) <= view_wview[0]/2 && abs(o_Player.y-y) <= view_hview[0]/2) //if the object  is in view
event_inherited();																//begin motion

}