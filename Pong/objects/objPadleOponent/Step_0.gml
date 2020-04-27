/// @description Insert description here
// You can write your code in this editor

if(auto == true) {
	y = objBall.y
}

if (y < heightWithoutPadding) {
	y = lerp(y, objBall.y, .05)
}

if (y > room_height - heightWithoutPadding) {
	y = room_height - heightWithoutPadding
}