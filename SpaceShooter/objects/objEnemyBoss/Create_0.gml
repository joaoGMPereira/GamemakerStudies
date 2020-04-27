/// @description Insert description here
// You can write your code in this editor

enum BossMovement {
	left,
	right
}

randomize()
countState = 0
state = irandom(2)
delay = 0
life = 250 * objControl.bossLevel
moviment = BossMovement.left