if(isHidden) {
	alpha -= 0.05

} else {
	alpha += 0.05
}

if(alpha >= 1) {
	isHidden = true
	room_goto(destinyRoom)
}

if(alpha <= 0 && newRoom) {
	instance_destroy()
}