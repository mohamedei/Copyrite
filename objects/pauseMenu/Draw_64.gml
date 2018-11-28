/// @description Insert description here
// You can write your code in this editor
draw_sprite(global.pause_sprite,-1,0,0)
draw_set_alpha(0.5); // Increase or decrease to change tint intensity
draw_set_color(c_black); // Change to the color you want
draw_rectangle(view_xview, view_yview, view_xview+view_wview, view_yview+view_hview, 0);
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(view_wview[0]/2,view_hview[0]/2, "Pause");