/// @description Insert description here
// You can write your code in this editor

var yy = irandom_range(64, 224)
var xx = room_width + irandom_range(50, 100)

var topMontain = instance_create_layer(xx, yy,"InstancesFloor", objTopMontain)
var bottomMontain = instance_create_layer(xx, yy + 160,"InstancesFloor", objBottomMontain)
alarm[0] = random_range(1, 3) * room_speed