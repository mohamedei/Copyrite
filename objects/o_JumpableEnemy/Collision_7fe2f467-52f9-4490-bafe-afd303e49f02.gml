/// @description Insert description here
// You can write your code in this editor
other.stuck=0;
other.stuckcounter=0;
other.tolerancecounter=0;
other.stuckvertical=0;
other.launchdir=0;
if(other.y<y-20)
{
	if(global.bullettime==0.25)
	other.vsp=-4*global.bullettime*2;
	else
	other.vsp=-4;
other.doublejump=1;
other.jumpenemy=1;
if(hurt==0)
{HP=HP-1;;
hurt=1;}
if(HP<=0) {instance_destroy();}
}
else
{
	event_inherited();
}