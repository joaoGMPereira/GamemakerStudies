/// @description Insert description here
// You can write your code in this editor
var index = 1
repeat(life) {
	draw_sprite_ext(sprite_index, image_index, 20 * index, room_height-30, .3, .3, image_angle, c_white, .7)
	index++
}

repeat(shieldCount) {
	draw_sprite_ext(sprShield, 0, room_width- (40*index) , room_height-30, .3, .3, image_angle, c_white, .7)
	index++
}