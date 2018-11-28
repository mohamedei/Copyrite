	if(enemy==0)
	{
	if ((direction > 90) && (direction < 270)) {
		if(other.move==1)
			{
				if direction<90
					direction=direction+(180-(180-(abs(90-direction)*2)))
				else
					direction=direction+(180-(180-(abs((90+360)-direction)*2)))
					enemy=1;
			}
		else
			{
				other.HP-=1;
				other.hurt=1;
				instance_destroy();
			}
	} 
	else 
	{
   if(other.move==-1)
			{
				if direction<90
					direction=direction+(180-(180-(abs(90-direction)*2)))
				else
					direction=direction+(180-(180-(abs((90+360)-direction)*2)))
					enemy=1;
			}
		else
			{
				other.HP-=1;
				other.hurt=1;
				
				instance_destroy();
				
			}
	}
}