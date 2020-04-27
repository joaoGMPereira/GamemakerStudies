

var force = argument0
var sound = argument1
var layerShake = argument2

var shake = instance_create_layer(0,0, layerShake, objShake)
shake.force = force
shake.sound = sound
