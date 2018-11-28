/// @description Insert description here
// You can write your code in this editor
if(instance_exists(o_Player)){
if(abs(o_Player.x-x) <= view_wview[0]/2 && abs(o_Player.y-y) <= view_hview[0]/2)
{
if(o_Player.x>x)
dir=1;				//set direction of creation for bullet
else
dir=-1;
if(abs(o_Player.x-x) <= view_wview[0]/2 && abs(o_Player.y-y) <= view_hview[0]/2)
{
	counter++
	if(counter>=60/global.bullettime)							//every 60 steps
		{
			with(instance_create_layer(x+32*dir,y,"Bullet",o_Bullet))	//create a bullet
			{
				enemy=1;
				speed=20*global.bullettime;											//that fires towards the player
				direction=point_direction(other.x, other.y, o_Player.x, o_Player.y);
				
			}
			counter=0;
		}
}

}
}
event_inherited();