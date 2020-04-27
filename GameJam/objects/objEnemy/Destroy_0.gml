/// @description Insert description here
// You can write your code in this editor
if(!(x < 0 || x >= room_width || y < 0 || y >= room_height)) {
	var repeatTime = irandom_range(3, 5)
	repeat(repeatTime) {
		instance_create_layer(x, y, "Enemy", objEnemyDestroyed)
	}
	var mark = instance_create_layer(x,y, "Enemy", objEnemyMark)
	mark.image_xscale = 0.7
	mark.image_yscale = 0.7
	instance_create_layer(x,y, "Enemy", objShake)
}
	