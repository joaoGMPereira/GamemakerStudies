/// @description Insert description here
// You can write your code in this editor

var yy = (y-sprite_yoffset)+ sprite_height/2

var explosion = instance_create_layer(x, yy, "InstancesEnemy", objExplosion)

explosion.image_xscale = 2
explosion.image_yscale = 2
objControl.expPlayer += objControl.expLevel - objControl.expPlayer
objControl.bossLevel++
objControl.bossIsAlive = false
scrptShake(80,noone, "InstancesEnemy")