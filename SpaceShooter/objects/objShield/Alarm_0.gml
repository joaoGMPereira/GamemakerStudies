/// @description Insert description here
// You can write your code in this editor
image_index--
if(image_index < 0) {
	if(instance_exists(objPlayer)) {
		objPlayer.shieldCount = 3	
	}
	audio_play_sound(sndShieldDown, 5, false)
	instance_destroy()
} else {
	alarm[0] = room_speed * 1
}