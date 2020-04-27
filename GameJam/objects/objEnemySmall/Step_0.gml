/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_xscale += 0.002
image_yscale += 0.002
speed += 0.002

if(image_xscale >= 1) {
	instance_change(objEnemy, false)
}