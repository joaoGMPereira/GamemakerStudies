/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.02
speed *= 0.9
if(image_alpha <= 0) {
	instance_destroy()
}