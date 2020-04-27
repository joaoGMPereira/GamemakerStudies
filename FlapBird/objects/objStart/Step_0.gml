/// @description Insert description here
// You can write your code in this editor


if(moveUp) {
	moviment += 0.2
	if(moviment == maxMoviment) {
		moveUp = false
	}
} else {
	moviment -= 0.2
	if(moviment == -maxMoviment) {
		moveUp = true
	}
}



if(moveUp) {
	y++
} else {
	y--
}

