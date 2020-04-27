/// @description Insert description here
// You can write your code in this editor
if(room_exists(roomSetupGlobalVariables) && gameStarted == false) {
	gameStarted = true
	var transition = instance_create_layer(0, 0, "Instances", objTransition)
	transition.destinyRoom = destinyRoom
}