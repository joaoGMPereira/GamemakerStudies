/// @description Insert description here
// You can write your code in this editor

enum UpdatedState {
   stop,
   collected,
   updated
}

direction = random(360)
speed = random_range(.2, 1)

collected = false
updated = false
moving_speed = 10;
target_x = 760;
target_y = 0;

incrementing = random_range(.01, .1)
image_xscale = .5
increasing = false
