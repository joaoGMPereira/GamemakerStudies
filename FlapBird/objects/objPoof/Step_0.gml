/// @description Insert description here
// You can write your code in this editor
if(grow) {
	image_xscale += .05
	image_yscale = image_xscale
}

if(image_xscale > 1) {
	grow = false
	image_alpha -= 0.05
}

if(image_alpha <= 0) {
	
	instance_destroy()
}