/// @description Insert description here
// You can write your code in this editor
if(instance_number(objEnemyParent) < 30) {
	repeat(random(3)) {
		instance_create_layer(random(room_width), random(room_height), "Enemy", objEnemyBig)
	}
}
alarm[1] = room_speed*random_range(3,8)