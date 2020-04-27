/// @description Insert description here
// You can write your code in this editor

var left = keyboard_check(vk_left)
var right = keyboard_check(vk_right)
var up = keyboard_check(vk_up)
var down = keyboard_check(vk_down)
var space = keyboard_check_pressed(vk_space)
var shield = keyboard_check_pressed(ord("E"))
var horizontalSpeed = (right - left) * velocity
var verticalSpeed = (down - up) * velocity

x += horizontalSpeed
y += verticalSpeed

x = clamp(x, 32, room_width - 32)
y = clamp(y, 32, room_height - 32)

if(shield && shieldCount > 0) {
	instance_create_layer(x, y, "InstancesPlayer", objShield)
	shieldCount--
}

if(shootLevel == 1) {
	if(space) {
		instance_create_layer(x, y, "InstancesPlayer", objShoot)
	}
} else if(shootLevel == 2) {
	if(space) {
		var leftShoot = instance_create_layer(x - 32, y, "InstancesPlayer", objShoot02)
		leftShoot.hspeed = 4
		var rightShoot = instance_create_layer(x + 32, y, "InstancesPlayer", objShoot02)
		rightShoot.hspeed = -4
	}
} else if(shootLevel == 3) {
	if(space) {
		instance_create_layer(x, y, "InstancesPlayer", objShoot)
		var leftShoot = instance_create_layer(x - 32, y, "InstancesPlayer", objShoot02)
		leftShoot.hspeed = 4
		var rightShoot = instance_create_layer(x + 32, y, "InstancesPlayer", objShoot02)
		rightShoot.hspeed = -4
	}
}  else if(shootLevel == 4) {
	if(space) {
		var variation = 20
		repeat(3) {
			var shoot = instance_create_layer(x, y, "InstancesPlayer", objShoot)
			shoot.direction = 90+variation
			shoot.image_angle = variation
			variation -= 20
		}
	}
}  else if(shootLevel == 5) {
	if(space) {
		var variation = 20
		repeat(3) {
			var shoot = instance_create_layer(x, y, "InstancesPlayer", objShoot)
			shoot.direction = 90+variation
			shoot.image_angle = variation
			variation -= 20
		}
		instance_create_layer(x, y, "InstancesPlayer", objShoot)
		var leftShoot = instance_create_layer(x - 32, y, "InstancesPlayer", objShoot02)
		leftShoot.hspeed = 4
		var rightShoot = instance_create_layer(x + 32, y, "InstancesPlayer", objShoot02)
		rightShoot.hspeed = -4
	}
}

if(space) {
	audio_play_sound(sndPlayerShoot, 10, false)
}

if(life <= 0) {
	instance_destroy()
}
