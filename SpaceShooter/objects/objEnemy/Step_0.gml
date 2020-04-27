/// @description Insert description here
// You can write your code in this editor

randomize()
if(y - sprite_height > room_height) {
	instance_destroy()
}

if(y >= 0 && inRoom == false) {
	alarm[0] = room_speed/3*irandom_range(1,3)
	inRoom = true
}