/// @description Insert description here
// You can write your code in this editor
x = clamp(x, 55, room_width - 55)
y = clamp(y, 55, room_height - 90)

var enemy = instance_place(x, y, objEnemyParent)
if(enemy) {
	show_debug_message(life)
	if(!invincible) {
		colisionCount++ 
		life--
		show_debug_message("HITT")
		repeat(5) {
			instance_create_layer(x, y + 20, "Player", objPlayerColision)
		}
	}
	if(life <= 0) {
		var transition = instance_create_layer(0, 0, "Instances", objTransition)
		transition.destinyRoom = roomStart
		instance_destroy()
	}
	kickBack = true
	direction = enemy.direction
	speed = 15
}

if(kickBack) {
	show_debug_message(speed)
	speed -= 1
	if(speed <= 0) {
		kickBack = false	
	}
} else {
	var left = keyboard_check(ord("A"))
	var right = keyboard_check(ord("D"))
	var up = keyboard_check(ord("W"))
	var down = keyboard_check(ord("S"))

	var horizontalSpeed = (right - left) * velocity
	var verticalSpeed = (down - up) * velocity




	x += horizontalSpeed
	y += verticalSpeed
	
	selectedSpriteIndex = 0
	if(left) {
		selectedSpriteIndex = 1
	}

	if(right) {
		selectedSpriteIndex = 2
	}

	if(up) {
		selectedSpriteIndex = 3
	}

	if((up && down) || (left && right)) {
		selectedSpriteIndex = 0
	}
}

image_index = selectedSpriteIndex


var invinciblePressed = keyboard_check_pressed(ord("I"))

if(invinciblePressed) {
	invincible = !invincible
}

if(invincible) {
	blendColor = choose(c_yellow, c_red, c_blue, c_green, c_purple, c_teal, c_aqua, c_teal, c_fuchsia, c_orange, c_olive)
}



var isShooting = keyboard_check(vk_space);
waitTime++;
if (isShooting) {
 if (waitTime >= shootsLimit) {
	 var dir = point_direction(x, y, mouse_x, mouse_y);
     var shoot = instance_create_layer(x, y, "Player", objPlayerShoot);
     shoot.direction = dir;
     shoot.image_angle = dir;
     waitTime = 0;
 }
}