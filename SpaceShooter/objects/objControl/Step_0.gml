/// @description Insert description here
// You can write your code in this editor

if(expPlayer >= expLevel) {
	global.level++
	expLevel *= 1.8
	if(global.level%2 == 0) {
		showBoss = true
		audio_stop_all()
	} else {
		showBoss = false
	}
}

if(expPlayer > global.maxRanking) {
	global.maxRanking = expPlayer 
}