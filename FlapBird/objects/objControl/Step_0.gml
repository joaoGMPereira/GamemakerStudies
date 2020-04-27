/// @description Insert description here
// You can write your code in this editor
points += .2

if(points >= pointsLevel) {
	level++
	pointsLevel *= 2
	audio_play_sound(sndLevel, 10, false)
}

layer_hspeed("BackgroundFloor", -level-4)