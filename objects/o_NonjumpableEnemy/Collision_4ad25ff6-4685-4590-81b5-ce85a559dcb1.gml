/// @description Insert description here
// You can write your code in this editor
	if(other.hurt!=1)
{
	if(x>other.x)
	{
		other.dir=-1;
	}
	else 
	{
		other.dir=1;
	}
	global.life-=10;
	other.HP=other.HP-1;
	other.hurt=1;
	}
	else if(other.anim_speed==60)
	{
	other.hurt=0;
	}