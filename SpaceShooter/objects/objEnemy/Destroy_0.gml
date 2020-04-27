/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x, y, "InstancesPlayer", objExplosion)

var chance = random(100)
if(chance > 50) {
	instance_create_layer(x, y, "InstancesPlayer", objPowerUp)
} 
scrptShake(10,noone, "InstancesEnemy")