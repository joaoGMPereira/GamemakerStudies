/// @description Insert description here
// You can write your code in this editor

delay++
countState++

if(countState >= room_speed * 6) {
	state = irandom(2)
	countState = 0
}

if(life <= 0) {
	instance_destroy()
	audio_stop_all()
	audio_play_sound(sndBackground, 1, true)
}

if(y <= 200) {
	y += 3
} else {
	if(state == 0) {
		if(delay >= 40) {
			delay = 0
			instance_create_layer(x, y + 20, "InstancesEnemy", objEnemySecondShoot)
		}

	} else if(state == 1) {
		if(delay == 35) {
			instance_create_layer(x - 95, y, "InstancesEnemy", objEnemyShoot)
		}
		if(delay >= 40) {
			delay = 0
			instance_create_layer(x + 95, y, "InstancesEnemy", objEnemyShoot)
		}
	
		if(moviment == BossMovement.left) {
			x -= 2
		}
		if(moviment == BossMovement.right) {
			x += 2
		}
	
		if(x >= 672) {
			moviment = BossMovement.left
		}
		if(x <= 128) {
			moviment = BossMovement.right
		}

	} else {
		if(delay >= 45) {
			delay = 0
			instance_create_layer(x - 95, y+20, "InstancesEnemy", objEnemyShoot)
		}
		if(delay == 35) {
			instance_create_layer(x, y, "InstancesEnemy", objEnemySecondShoot)
		}
		if(delay == 40) {
			instance_create_layer(x + 95, y, "InstancesEnemy", objEnemyShoot)
		}
	}
}