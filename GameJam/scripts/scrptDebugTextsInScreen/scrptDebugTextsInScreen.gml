

var texts = ""
var textColor = c_black
var axysX = 32
var axysY = 32

if(argument_count > 0) {
	texts = argument[0]
}

if(argument_count > 1) {
	textColor = argument[1]
}
if(argument_count > 2) {
	axysX = argument[2]
}

if(argument_count > 3) {
	axysY = argument[3]
}

draw_set_font(fntDebug)
draw_set_color(textColor)
for (index = 0; index < array_length_1d(texts); index += 1)	{
	draw_set_alpha(1)
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_text(axysX, axysY + (index * 32), texts[index]);
	//show_debug_message(texts[index])
}
draw_set_font(fntDefault)
draw_set_color(c_white)
