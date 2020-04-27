/// @description Insert description here
// You can write your code in this editor
randomize()

if(showBoss) {
	if(bossIsAlive == false) {
		var xx = irandom_range(32, room_width - 200)
		var yy = -300
		instance_create_layer(xx, yy, "InstancesEnemy", objEnemyBoss)
		bossIsAlive = true
		audio_play_sound(sndBackground2, 1, true)
	}
} else {
	var repeatEnemies = random_range(1, 6) * global.level
	show_debug_message("Criando inimigos")
	repeat(repeatEnemies) {
		var xx = irandom_range(32, room_width - 32)
		var yy = irandom_range(-64,-600*global.level)
		var chance = random(10) * global.level
		if(chance > 25) {
			var enemy = instance_create_layer(xx, yy, "InstancesEnemy", objSecondEnemy)
			enemy.speed = random_range(2, 5)
		} else {
			var enemy = instance_create_layer(xx, yy, "InstancesEnemy", objEnemy)
			enemy.speed = random_range(1, 4)
		}
	}
}
var enemyRespawn = random_range(2, 6) * room_speed
alarm[0] = enemyRespawn