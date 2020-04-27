/// @description Insert description here
// You can write your code in this editor

var mouseX = mouse_x
var mouseY = mouse_y

var buttonClicked = mouse_check_button(mb_left)
if(position_meeting(mouseX, mouseY, self)) {
	if(InButton == false) {
		textColor = selectedColor
	}
	InButton = true
	
	if(buttonClicked) {
		if(changeAlpha < 3) {
			if(alpha >= 0.3) {
				changeAlpha++
				increaseAlpha = false
			}
			if(alpha <= 0) {
				changeAlpha++
				increaseAlpha = true
			}

			if(increaseAlpha) {
				alpha += 0.05
			} else {
				alpha -= 0.05
			}
		}
	} else {
		changeAlpha = 0
		increaseAlpha = false
	}
} else {
	InButton = false
	textColor = c_white
}
