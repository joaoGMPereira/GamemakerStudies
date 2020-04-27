/// @description Insert description here
// You can write your code in this editor

if(powerUps < 4) {
	if(other.collected == false) {
		powerUps++
		shootLevel++
		other.target_y = 40 * objPlayer.powerUps
	}
	with(other) {
	collected = true
	}
} else {
	with(other) {
		if(collected == false) {
			instance_destroy()
		}
	}
}

show_debug_message("PowerUps:" + string(powerUps))
	show_debug_message("ShootLevel:" + string(shootLevel))