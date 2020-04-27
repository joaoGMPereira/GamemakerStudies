/// @description Insert description here
// You can write your code in this editor
if(instance_number(objEnemyParent) < 30) {
	repeat(random(10)) {
		instance_create_layer(random(room_width), random(room_height), "Enemy", objEnemy)
	}
}
alarm[0] = room_speed*random_range(1,3)