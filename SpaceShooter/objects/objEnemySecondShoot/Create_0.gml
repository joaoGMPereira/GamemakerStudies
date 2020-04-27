/// @description Insert description here
// You can write your code in this editor
velocity = 5
destroyed = false
direction = 270
if(instance_exists(objPlayer)) {
	direction = point_direction(x, y, objPlayer.x, objPlayer.y)
}
image_angle = 180
speed = velocity

image_xscale = 2
image_yscale = 1

alarm[0] = 1
audio_play_sound(sndEnemyShoot, 5, false)