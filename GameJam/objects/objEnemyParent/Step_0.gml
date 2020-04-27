/// @description Insert description here
// You can write your code in this editor
selectedSpriteIndex = 0
if(direction >= 0 && direction < 80) {
	selectedSpriteIndex = 2
}

if(direction >= 80 && direction <= 90) {
	selectedSpriteIndex = 3
}

if(direction > 90 && direction <= 180) {
	selectedSpriteIndex = 1
}

if(direction > 180 && direction <= 260) {
	selectedSpriteIndex = 1
}

if(direction > 180 && direction <= 260) {
	selectedSpriteIndex = 1
}

if(direction > 260 && direction <= 270) {
	selectedSpriteIndex = 0
}

if(direction > 270 && direction < 360) {
	selectedSpriteIndex = 2
}
if(instance_exists(objPlayer)) {
	if(point_distance(x, y, objPlayer.x, objPlayer.y) <= 4) {
		selectedSpriteIndex = 0
	}
}
image_index = selectedSpriteIndex

if(instance_exists(objPlayer)) {
	if(point_distance(x, y, objPlayer.x, objPlayer.y) < vision) {
		direction = point_direction(x, y, objPlayer.x,  objPlayer.y)
	} else {
		direction = enemyDirection
	}
} else {
	direction = enemyDirection
}

var shoot = instance_place(x, y, objPlayerShoot)
if(shoot) {
	life--
	instance_create_layer(x, y, "Player", sprExplosionShoot)
	instance_destroy(shoot)
	
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
	
	if(life <= 0) {
	instance_destroy()
	}
}