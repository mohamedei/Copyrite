/// @description Insert description here
// You can write your code in this editor
with (o_Being)
    {
    if (place_meeting(x,y+5,other)&&!place_meeting(x,y-20,other))		//if the player is on the platform
        {
         // Move him with the lift
		 if(!place_meeting(x+other.x-other.xprevious,y,o_NowayWall))
          x+=other.x-other.xprevious
		  if(!place_meeting(x,other.y,o_NowayWall)&&!keyjump&&vsp>=0)	//collision handling
				{y=other.y-33;		//fix him to the lift
					vsp=other.vsp;}
			if(keyjump)
			{
				vsp=-9;
				y=y-9;
			}
	
        }
    }