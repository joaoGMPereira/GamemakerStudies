/// @description Insert description here
// You can write your code in this editor


if(collected) {
	if(updated == false && point_distance(x, y, target_x, target_y) > 5) {
		speed = moving_speed
		move_towards_point(target_x, target_y, speed);
	}
	else  {
		image_angle = 0
		image_xscale = 1
		speed = 0
		x = target_x
		y = target_y
		updated = true
		image_alpha -= .002
		if(image_alpha <= 0) {
			if(instance_exists(objPlayer)) {
				objPlayer.powerUps--
				objPlayer.shootLevel--
			}
			instance_destroy()
			with(objPowerUp) {
				if(collected) {
					target_y -= 40
					moving_speed = 6
					updated = false
				}
			}
			
		}
	}
} else {
	image_angle += incrementing*10
		if(increasing) {
			image_xscale += incrementing
		} else {
			image_xscale -= incrementing
		}

		if(image_xscale >= 2) {
			increasing = false
			incrementing = random_range(.01, .1)
		}

		if(image_xscale <= .5) {
			increasing = true
			incrementing = random_range(.01, .1)
		}
}
