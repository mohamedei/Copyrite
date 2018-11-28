/// @description Insert description here
// You can write your code in this editor
event_inherited();
firing_delay=firing_delay-1;				//firing delay for weapon
if(mouse_check_button(mb_left) && firing_delay<0)	//if LMB is clicked  and firing delay is finished
{
	if(state == states.walkingleft||state==states.idleleft||state==states.jumpingleft||state==states.idleshootleft||state==states.jumpnshootleft||state==states.walkingshootleft)
	{dir=-1;}		//direction you are facing  based  on animation
	else
	{dir=1;}
	firing_delay=15/global.bullettime ;	
	with(instance_create_layer(x+64*dir,y,"Bullet",o_Bullet))	//create a bullet
	{
	if(place_meeting(x,y,o_SniperJoe))					// if it spawns directly on top of a reflecting enemy
	{
		if((other.x<o_SniperJoe.x&&o_SniperJoe.move==1)||(other.x>o_SniperJoe.x&&o_SniperJoe.move==-1))//if you are facing  seperate directions
		{
			o_SniperJoe.HP-=1;																			//consider it a hit
			o_SniperJoe.hurt=1;
			instance_destroy();
		}
		else
		{
			move_towards_point(mouse_x,mouse_y,20*global.bullettime);				//otherwise keep the bullet as is
		}
		
	}
	else{
	move_towards_point(mouse_x,mouse_y,20*global.bullettime);
	}
	}
	
}