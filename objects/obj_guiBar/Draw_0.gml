// Use the script "scr_bar" to draw life and exp bar
scr_bar(__view_get( e__VW.XView, 0 )+10, __view_get( e__VW.YView, 0 )+10, global.life, global.lifemax, spr_lifeBar, spr_guiBar, __view_get( e__VW.XView, 0 )+46, __view_get( e__VW.YView, 0 )+18, spr_xpBar, global.xp, global.xpmax, __view_get( e__VW.XView, 0 )+46, __view_get( e__VW.YView, 0 )+30);

