/// @description Insert description here
// You can write your code in this editor
instance_deactivate_all(true); //Deactivate all other instances
    instance_activate_region(camera_get_view_x(view_camera[0])-64,camera_get_view_y(view_camera[0])-64,camera_get_view_width(view_camera[0])+128,camera_get_view_height(view_camera[0])+128,true); //Activate all instances just outside of the view
    instance_deactivate_object(o_parentEnemy); //Deactivate enemies
    instance_activate_region(camera_get_view_x(view_camera[0])-32,camera_get_view_y(view_camera[0])-32,camera_get_view_width(view_camera[0])+32,camera_get_view_height(view_camera[0]),true); //Activate all instances inside view
	
var _cam_x = camera_get_view_x(view_camera[0]) ;
layer_x("Background", _cam_x * 0.5); // Change the background layer name to whatever you use in the room editor
layer_x("Backgrounds_1", _cam_x * 0.25);
room_speed=60;
enum states {
			idleright,
			idleleft,
			walkingright,
			walkingleft,
			jumpingright,
			jumpingleft,
			idleshootright,
			idleshootleft,
			walkingshootright,
			walkingshootleft,
			jumpnshootright,
			jumpnshootleft}
			grv=0.3*global.bullettime;
if(global.life<=0)
{
	game_restart();
}
if(vsp>0)
{
	jumpenemy=0;
} 
prevstate=state;
//input checking
keyup= keyboard_check(vk_up)||keyboard_check(ord("W"));
keydown = keyboard_check(vk_down)||keyboard_check(ord("S"));
keydownheld = keyboard_check_pressed(vk_down)||keyboard_check_pressed("S");
keyleft= keyboard_check(vk_left)||keyboard_check(ord("A"));
keyright = keyboard_check(vk_right)||keyboard_check(ord("D"));
keyjump=keyboard_check_pressed(vk_space);
keyjumpheld=keyboard_check(vk_space);
keydown=keyboard_check(vk_down)||keyboard_check(ord("S"));
keyshovel=mouse_check_button(mb_right);

//Animation FSM
if(!place_meeting(x,y+2,o_Platform)&&!keyleft&&!keyright)
{
	if(prevstate==states.idleleft||prevstate==states.jumpingleft||prevstate==states.walkingleft||prevstate ==states.idleshootleft||prevstate==states.walkingshootleft||prevstate==states.jumpnshootleft)
	{
		state = states.jumpingleft
	}
	if(prevstate==states.idleright||prevstate==states.jumpingright||prevstate==states.walkingright||prevstate ==states.idleshootright||prevstate==states.walkingshootright||prevstate==states.jumpnshootright)
	{
		state = states.jumpingright;	
	}
}
if(!keyleft&&!keyright&&place_meeting(x,y+2,o_Platform))
	{
	if(prevstate==states.walkingright||prevstate==states.jumpingright||prevstate ==states.idleshootright||prevstate==states.walkingshootright||prevstate==states.jumpnshootright)
		{
			state=states.idleright;
		}
	if(prevstate == states.walkingleft||prevstate==states.jumpingleft||prevstate ==states.idleshootleft||prevstate==states.walkingshootleft||prevstate==states.jumpnshootleft)
		{
			state=states.idleleft;
		}
		
	}
if(keyjump||!place_meeting(x,y+2,o_Platform))
{
	if(prevstate==states.idleleft||prevstate==states.walkingleft||prevstate==states.jumpingleft||prevstate ==states.idleshootleft||prevstate==states.walkingshootleft||prevstate==states.jumpnshootleft)
		{state=states.jumpingleft;}
	if(prevstate==states.idleright||prevstate==states.walkingright||prevstate==states.jumpingright||prevstate ==states.idleshootright||prevstate==states.walkingshootright||prevstate==states.jumpnshootright)
		{state=states.jumpingright;}
}
if(keyleft&&!keyright&&place_meeting(x,y+2,o_Platform))
	{
		if(prevstate==states.walkingright||prevstate==states.jumpingright||prevstate==states.idleright||prevstate ==states.idleshootright||prevstate==states.walkingshootright||prevstate==states.jumpnshootright)
		{
		//	x=x-32;	
		}
		state=states.walkingleft;
		}
if(keyright&&!keyleft&&place_meeting(x,y+2,o_Platform))
	{
		if(prevstate==states.walkingleft||prevstate==states.jumpingleft||prevstate==states.idleleft||prevstate ==states.idleshootleft||prevstate==states.walkingshootleft||prevstate==states.jumpnshootleft)
		{

			//x=x+32;	
				
		}
		state=states.walkingright;
	}
if(keyright&&keyleft&&place_meeting(x,y+2,o_Platform))
{
if(prevstate==states.walkingleft||prevstate=states.jumpingleft||prevstate ==states.idleshootleft||prevstate==states.walkingshootleft||prevstate==states.jumpnshootleft)
	{
	state=states.idleleft;
	}
	if(prevstate==states.walkingright||prevstate=states.jumpingright||prevstate ==states.idleshootright||prevstate==states.walkingshootright||prevstate==states.jumpnshootright)
	{
	state=states.idleright;
	}
}
if(keyleft&&!keyright&&!place_meeting(x,y+2,o_Platform)&&(prevstate==states.jumpingright||prevstate==states.jumpnshootright))
{state = states.jumpingleft;
	//	x=x-32;
		}
if(!keyleft&&keyright&&!place_meeting(x,y+2,o_Platform)&&(prevstate==states.jumpingleft||prevstate==states.jumpnshootleft))
{state = states.jumpingright;
//	x=x+32;
	}
	if(state=states.idleright&&mouse_check_button(mb_left))
		{
		state=states.idleshootright;
		}
		else
		if(state=states.idleleft&&mouse_check_button(mb_left))
		{
		state=states.idleshootleft;
		}
		else
		if(state=states.walkingright&&mouse_check_button(mb_left))
		{
		state=states.walkingshootright;
		}
		else
		if(state=states.walkingleft&&mouse_check_button(mb_left))
		{
		state=states.walkingshootleft;
		}
		else
		if(state=states.jumpingright&&mouse_check_button(mb_left))
		{
		state=states.jumpnshootright;
		}
		else
		if(state=states.jumpingleft&&mouse_check_button(mb_left))
		{
		state=states.jumpnshootleft;
		}
switch(state){
case states.idleright:{image_xscale =1; {index=0;} break;}
case states.idleleft:{image_xscale =-1; {index=0;} break;}
case states.walkingright:{image_xscale =1;if(index>0&&index<4){ index=index+0.15*global.bullettime} else {index=1;} break;}
case states.walkingleft:{image_xscale =-1;if(index>0&&index<4) {index=index+0.15*global.bullettime} else {index=1;} break;}
case states.jumpingright:{image_xscale =1;{index=0;} break;}
case states.jumpingleft:{image_xscale =-1;{index=0;}  break;}
case states.idleshootright:{image_xscale =1;{index=5;} break;}
case states.idleshootleft:{image_xscale =-1;{index=5;} break;}
case states.walkingshootright:{image_xscale =1;if(index>0&&index<4){ index=index+0.15*global.bullettime} else {index=1;} break;}
case states.walkingshootleft:{image_xscale =-1;if(index>0&&index<4) {index=index+0.15*global.bullettime} else {index=1;} break;}
case states.jumpnshootright:{image_xscale =1;{index=5;} break;}
case states.jumpnshootleft:{image_xscale =-1;{index=5;}  break;}
}
//If the player is shovelling change the sprite
if(mouse_check_button(mb_right)||(stuckvertical==1&&stuckcounter==0)||(stuck==1&&stuckcounter!=0))
{
	index=0;
}
//If the player is holding down  change the sprite
if((keydown==1&&vsp!=0)||(stuck==1&&stuckcounter==0))
{
	index=6;
}
move = keyright - keyleft;
	


hsp = move *walksp;
if(place_meeting(x,y+1,o_Platform)&&keyjump&&stuck==0&&stuckvertical==0&&(anim_speed>30||anim_speed==0)&&round(vsp)==0)
{									//if you are touching the  ground and you are not stuck
	canleap=1;						//you can jump
	if(global.bullettime==1)
		vsp=-9
	else
		vsp=-9*global.bullettime*2;
}
if(keyjump&&doublejump)				//if you have jumped on  an enemy you can doublejump
{
	doublejump=0;
	if(global.bullettime==1)
		vsp=-9
	else
	vsp=-9*global.bullettime*2;
}
if(stuckcounter==0&&stuck==0&&stuckvertical==0&&(anim_speed>30||anim_speed==0))
if(!place_meeting(x+hsp,y-1,o_NowayWall)){	//if you are not stuck move
if(global.bullettime!=1)
				x=x+(hsp*global.bullettime);
			else
				x=x+(hsp*global.bullettime);
}
event_inherited();
if(hurt==1)
	{
	if((anim_speed>=0&&anim_speed<=10)||(anim_speed>=20&&anim_speed<=30)||(anim_speed>=40&&anim_speed<=50))
	{alpha=0;}
	else{alpha=1;}
	}
	else {alpha=1;}
if(anim_speed>=60/global.bullettime)
	{
	hurt=0;
	anim_speed=0;
	}
if(!keyjumpheld==1&&vsp<0&&jumpenemy==0)	//while jump key ius held keep rising  until peak
	vsp=max(vsp,0);
	
if(stuckvertical==0)
y =	y +vsp*global.bullettime;		//if you are not stuck  move
if(hurt)
anim_speed++;

if(keydown&&vsp>=0&&place_meeting(x,y+5,o_NowayWall))		//if you are pressing down and are in contact with a solid wall
{															//become stuck
	stuck =1;
}
if(stuck==1)
{
	if(keyjump&&stuckcounter==0)
	{
			launchdir=0;	//direction in which  you  will launch
			stuck=0;		//whether you are stuck or not
			stuckcounter=0;	//the duration when you  are being launched and cannot move
			vsp=0;			//vertical speed
			tolerancecounter=0;	//how long the button needs to be held to register and launch
	}
	vsp=0;
	if(keyleft-keyright==0)
		tolerancecounter=0;
	if(keyleft-keyright==1&&stuckcounter==0&&keydown==0)
	{
		if(tolerancecounter<0)
				tolerancecounter=0;
			tolerancecounter++
			if(tolerancecounter==15)		//if left key has been held  for 15 steps
				{
					tolerancecounter=0;		//launch to the left and reset tolerance
					launchdir = -1;
					}
	}
	if(keyright-keyleft==1&&stuckcounter==0&&keydown==0)
	{
			if(tolerancecounter>0)
				tolerancecounter=0;
			tolerancecounter--;
			if(tolerancecounter==-15)		//if right key has been held  for 15 steps
			{
				tolerancecounter=0;			//launch to the right and reset tolerance
				launchdir=1;
				}
	}
	if(launchdir!=0)						//if the player is being launched
	{										//increment the stuckcounter
		stuckcounter++;						//and launch him in that direction	
		hsp=launchdir*16;
		if(!place_meeting(x+hsp,y,o_NowayWall)&&hurt!=1)//if there is no wall in your way
		x=x+hsp*global.bullettime;
		
		if(stuckcounter>=launchcounter*1.5)				//if stuckcounter reaches launchcounter*1.5
		{
			launchdir=0;								//become unstuck
			stuck=0;
			stuckcounter=0;
			hsp=0;
		}
	}
}
if(state == states.walkingleft||state==states.idleleft||state==states.jumpingleft||state==states.idleshootleft||state==states.jumpnshootleft||state==states.walkingshootleft)
	{dir=-1;}
	else
	{dir=1;}
if(keyshovel&&vsp!=0&&place_meeting(x+dir,y,o_NowayWall))//&&canleap==1	
{
	stuckvertical =1;													//if you are next to a wall and you are in midair with the shovel key pressed
}																		//become stuck
if(stuckvertical==1)
{
	if(keyjump&&stuckcounter==0)
	{																	//same logic as previous but vertically
			launchdir=0;
			stuckvertical=0;
			stuckcounter=0;
			vsp=0;
			tolerancecounter=0;
	}
	canleap=0;
	vsp=0;
	if(keydown-keyup==0)
		tolerancecounter=0;
	if(keyup-keydown==1&&stuckcounter==0)
	{
		if(tolerancecounter<0)
				tolerancecounter=0;
			tolerancecounter++
			if(tolerancecounter==10)
				{
					tolerancecounter=0;
					launchdir = -1;
					}
	}
	if(keydown-keyup==1&&stuckcounter==0)
	{
			if(tolerancecounter>0)
				tolerancecounter=0;
			tolerancecounter--;
			if(tolerancecounter==-10)
			{
				tolerancecounter=0;
				launchdir=1;
				}
	}
	if(launchdir!=0)
	{
		stuckcounter++;
		vsp=launchdir*16;
		if(place_meeting(x,y+vsp,o_NowayWall))
			vsp=0;
		y=y+vsp*global.bullettime;
		if(stuckcounter>=launchcounter)
		{
			launchdir=0;
			stuckvertical=0;
			stuckcounter=0;
			vsp=0;
			stuck=0;
		}
	}
}
if(anim_speed<=30&&anim_speed>0)												//hurt duration in which you will be moved back opposite to the direction of attack
{
	if(!place_meeting(x+5*hurtdir,y-5,o_NowayWall))
	{
		x=x+hurtdir*2*global.bullettime;
	}
}