/// @description Insert description here
// You can write your code in this editor
draw_text(20, 20, "Level: " + string(global.level))

draw_text(20, 40, "Exp: " + string(int64(expPlayer)))

draw_text(20, 60, "Exp To next Lvl: " + string(int64(expLevel - expPlayer)))