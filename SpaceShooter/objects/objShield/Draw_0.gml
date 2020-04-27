/// @description Insert description here
// You can write your code in this editor
draw_self()
gpu_set_blendmode(bm_add)
if(image_alpha >= 0) {
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, color,image_alpha*0.7)
}
gpu_set_blendmode(bm_normal)