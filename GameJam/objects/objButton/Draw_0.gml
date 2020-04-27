/// @description Insert description here
// You can write your code in this editor
image_alpha = 0
draw_self()
var scale_x = view_wport[0]/view_wview[0];
var scale_y = view_hport[0]/view_hview[0];   

if(InButton) {
	draw_set_alpha(1)
	draw_set_color(selectedColor)
	draw_roundrect(x- border,y - border, x + border + (sprite_width*scale_x), y + border + (sprite_height*scale_y), false)
}
draw_set_alpha(1)
draw_set_color(c_gray)
draw_roundrect(x,y, x + sprite_width*scale_x, y + sprite_height*scale_y, false)

draw_set_color(textColor)
draw_set_font(font)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x + sprite_width*scale_x/2, y + sprite_height*scale_y/2, textButton)
draw_set_color(c_white)
image_alpha = 1


draw_set_alpha(alpha)
draw_set_colour(touchFeedbackColor)

draw_roundrect(x,y, x + sprite_width*scale_x, y + sprite_height*scale_y, false)


if(showDebugMessages) {
	scrptDebugTextsInScreen(["Alpha Button: " + string(alpha), "In Button: " + string(InButton)], c_black)
}