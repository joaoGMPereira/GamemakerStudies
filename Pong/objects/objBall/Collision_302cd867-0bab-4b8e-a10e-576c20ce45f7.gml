/// @description Insert description here
// You can write your code in this editor
if(speed < 15) {
	speed += 0.1  
	show_debug_message(speed)
}
move_bounce_solid(true)
audio_play_sound(sndPong,5, false)