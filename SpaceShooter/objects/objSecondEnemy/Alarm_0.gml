/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer)) {
	if(y < objPlayer.y) {
		instance_create_layer(x,y, "InstancesEnemy", objEnemySecondShoot)
	}
}
	alarm[1] = 10