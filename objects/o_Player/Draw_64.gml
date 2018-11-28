/// @description Insert description here
// You can write your code in this editor
if(global.bullettime!=1)//bullettime  GUI			
{
	draw_set_alpha(0.3); // Increase or decrease to change tint intensity

draw_set_color(c_dkgray); // Change to the color you want

draw_rectangle(view_xview, view_yview, view_xview+view_wview, view_yview+view_hview, 0);

draw_set_alpha(1);

draw_set_color(c_black);
}
