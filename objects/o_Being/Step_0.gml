/// @description Insert description here
// You can write your code in this editor
var hcollide;	
if(place_meeting(x+hsp,y,o_NowayWall))
{
	while(!place_meeting(x+sign(hsp), y, o_Platform))
	{
		x=x+sign(hsp);
	}
	hsp=0;
}
else{												//collision horizontally for one way platforms
hcollide=instance_place(x+hsp,y,o_Platform);
if(place_meeting(x+hsp, y,o_Platform))
{if(hcollide==noone){
	while(!place_meeting(x+sign(hsp), y, o_Platform)&&hurt!=1)
	{
		x=x+sign(hsp)*global.bullettime;
	}
	hsp =0;	}	
}
}
var vcollide;
{
    var x1,y1,obj,dsid,this,that,i;
    x1 = x;
    y1 = y+vsp;
    obj = o_Platform;
    dsid = ds_list_create();
    this = id;										//script that puts all colliding objects into a dynamic list
    with (obj) {
        that = id;
        with (this) {
            i = instance_place(x1,y1,that);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
}
if(dsid!=noone){
var maxy=ds_list_find_value(dsid,0);				//find  the value of the colliding wall  with the highest y coordinate
i=1;
while(i<ds_list_size(dsid))
{
	if(ds_list_find_value(dsid,i).y>maxy.y)
	maxy=ds_list_find_value(dsid,i);
	i++;
}
i=0;
vcollide=maxy										//perform collision with it
}
else vcollide=instance_place(x,y+vsp,o_Platform);	//if it is a noway platform
if(place_meeting(x, y+vsp,o_Platform))
{
	
	if(vsp>0&&!place_meeting(x,y,vcollide)&&place_meeting(x,y+vsp,vcollide))
	{
		while(!place_meeting(x, y+sign(vsp), o_Platform))				//pixel perfect collision
	{
		y=y+sign(vsp);
	}
	vsp=0;
	}
}
		if(dsid!=noone)											//destroy list to prevent memory leak
	 ds_list_destroy(dsid);
	 
if(place_meeting(x,y+vsp,o_NowayWall))
{																//collision with nowwaywall
	while(!place_meeting(x, y+sign(vsp), o_Platform))
	{
		y=y+sign(vsp);
	}
	vsp=0;
}
if(!(place_meeting(x,y+2,o_Platform)&&!place_meeting(x,y-2,o_Platform)))	//if i am on top of a oneway platform
	if(!(place_meeting(x,y+2,o_NowayWall)&&!place_meeting(x,y-2,o_NowayWall)))	//or the platform is solid
	vsp=min(vsp+grv,20);																//stop gravity