/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer)) {
	x = objPlayer.x
	y = objPlayer.y
} else {
	instance_destroy()
}

if(image_index == 0) {
	image_alpha -= .05
}