/// @description Insert description here
// You can write your code in this editor
anim_speed++;
event_inherited();
	if(anim_speed==60&&attacking==0)
		{anim_speed=0;
		}
if(instance_exists(o_Player)){
if(idle=1)					//animation
{
	if(o_Player.x>x)
	attackingdir=-1;
	else
	attackingdir=1;
	if(anim_speed<11)
	{
		anim=0;
	}
	else
		if(anim_speed<21)
		{
			anim=1;
		}
		else
			if(anim_speed<31)
			{
				anim=2;
			}
			else
				if(anim_speed<41)
				{
					anim=3;
				}
				else
					if(anim_speed<51)
					{
						anim=4;
					}
					else
					{
						anim=5;
						attackcounter++;
						if(anim_speed==60)
							anim_speed=0;
					}
}
if(attackcounter==30)
{
	attackcounter=0;
	attacking=1;
	idle=0;
}
if(attacking)
{
	if(attackcounter==0)
	{
		anim_speed=0;
		attackcounter=1;
	}
if(anim_speed<6)
	{
		anim=6;
	}
	else
		if(anim_speed<12)
		{
			anim=7;
		}
		else
			if(anim_speed<18)
			{
				anim=8;
			}
			else
				if(anim_speed<24)
				{
					anim=9;
				}
				else
					if(anim_speed<30)
					{
						anim=10;
					}
					else
						if(anim_speed<36)
						{
							anim=11;
						}
						else
							if(anim_speed<42)
							{
								anim=12;
							}
							else
								if(anim_speed<48)
								{
									anim=13;
								}
								else
									if(anim_speed<54)
									{
										anim=14;
									}
									else
		if(anim_speed<60)
		{
			anim=15;
		}
		else
			if(anim_speed<66)
			{
				anim=13;
			}
			else
				if(anim_speed<72)
				{
					anim=14;
				}
				else
					if(anim_speed<78)
					{
						anim=15;
					}
					else
						if(anim_speed<84)
						{
							anim=13;
						}
						else
							if(anim_speed<90)
							{
								anim=14;
							}
							else
								if(anim_speed<96)
								{
									anim=15;
								}
								else
									if(anim_speed<102)
									{
										anim=13;
									}
									else
										if(anim_speed<108)
										{
											anim=14;
										}
										else
											if(anim_speed<114)
											{
												anim=15;
											}
											else
											{
												anim=16;
											}
				
									
if(anim_speed==120)
		{anim_speed=0;
		attacking=0;
		idle=1;
		attackcounter=0;
		}

}

 if(x<o_Player.x&&move ==1&&o_Player.y>y)
{
	vsp=1;
}
if(x>o_Player.x&&move==-1&&o_Player.y>y)
{
	vsp=1;
}
if(place_meeting(x,y+10,o_NowayWall)||place_meeting(x,y-10,o_NowayWall))
{
	vsp=0;
}
if(abs(o_Player.x-x) <= view_wview[0]/2 && abs(o_Player.y-y) <= view_hview[0]/2)// object is visible in view
{
	
if(!place_meeting(x,y+10,o_NowayWall)&&!place_meeting(x,y-10,o_NowayWall)&&attacking==0){
y=y+vsp*global.bullettime;
}
if(!place_meeting(x+walksp*move,y,o_NowayWall)&&attacking==0)
x=x+walksp*move*global.bullettime;
												
}
if(x>o_Player.x&&move ==1)
{
	vsp=-1;
}
if(x<o_Player.x&&move==-1)
{
	vsp=-1;
}
if(x>o_Player.x&&move==1||x<o_Player.x&&move==-1)
counter++
if(counter==30)
{
	move*=-1;
	counter= 0;
}
}