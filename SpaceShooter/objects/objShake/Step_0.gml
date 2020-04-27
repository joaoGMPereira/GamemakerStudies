/// @description Insert description here
// You can write your code in this editor

var camx = random_range(-force, force)
var camY = random_range(-force, force)

camera_set_view_pos(view_camera[0], camx, camY)

force *= 0.9