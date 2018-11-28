/// @description Insert description here
// You can write your code in this editor
if(other.enemy==1){	//if the bullet is from an enemy
stuck=0;
stuckcounter=0;		//become unstuck
tolerancecounter=0;
stuckvertical=0;
if(hurt!=1)
{
	if(other.x>x)
	{
		hurtdir=-1;		//hurt yourself in the hurt  direction opposite to the direction you took damage from
	}
	else 
	{
		hurtdir=1;
	}

		HP=HP-1;
		hurt=1;
		global.life-=10;
		if(anim_speed==60)
		{
			hurt=0;
		}
}
}
if(other.enemy==1)
instance_destroy(other);
