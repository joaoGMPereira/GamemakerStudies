/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

countChildCreation++

if(countChildCreation == 20) {
	var child = instance_create_layer(x,y, "Enemy", objEnemySmall)
	child.direction = random(360)
}

if(countChildCreation == 40) {
	var child = instance_create_layer(x,y, "Enemy", objEnemySmall)
	child.direction = random(360)
}

if(countChildCreation == 50) {
	var child = instance_create_layer(x,y, "Enemy", objEnemySmall)
	child.direction = random(360)
}

if(countChildCreation == 60) {
	var child = instance_create_layer(x,y, "Enemy", objEnemySmall)
	child.direction = random(360)
}

if(countChildCreation == 160) {
	countChildCreation = 0
}