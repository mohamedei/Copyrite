// Simple control to block max and min life/exp draw bar
x=camera_get_view_x(view_camera[0])+10;
y=camera_get_view_y(view_camera[0])+10;
if (global.life >= global.lifemax)
{
    global.life = global.lifemax;
}
if (global.xp >= global.xpmax)
{
    global.xp = global.xpmax;
}

// Code for test the gui bar
if (keyboard_check_pressed(vk_right))
{
    // Add exp
    global.xp += 10;
}
if (keyboard_check_pressed(vk_left))
{
    // Remove exp
    if (global.xp > 0)
    {
        global.xp -= 10;
    }
}

