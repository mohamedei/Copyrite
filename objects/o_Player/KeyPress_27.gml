/// @description Insert description here
// You can write your code in this editor
if(pause == 0){//pause screen
global.pause_sprite = sprite_create_from_surface(application_surface,view_xview, view_yview,view_wview,view_hview,0,0,0,0);
instance_deactivate_all( false ); }			// take a screenshot of the view, tint the screen, deactivate the view and draw  the worrd pause
else
instance_activate_all();//Reactivate everything

instance_create_depth( 960,540 ,0, pauseMenu );