/// @description Insert description here
// You can write your code in this editor
draw_self()
if(invincible) {
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale + 0.2, image_yscale + .2, image_angle, blendColor,0.7)
	gpu_set_blendmode(bm_normal)
}