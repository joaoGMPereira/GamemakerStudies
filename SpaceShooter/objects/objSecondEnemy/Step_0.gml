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

if(inRoom) { //esta aparecendo
	if(y > room_height/3 && moving == false) {// ja passou 1/3 da tela
		if(x > room_width/2) {//estas na direita
			hspeed = -3
			moving = true
		} else {// esta na esquerda
			hspeed = 3
			moving = true
		}
	}
}