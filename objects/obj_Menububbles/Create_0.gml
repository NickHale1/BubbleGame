/// @description Insert description here
// You can write your code in this editor


image_blend = global.colorsArray[random(array_length(global.colorsArray)-1)]
image_angle = random(360);

scaleFactor = random_range(.7, 2);


image_alpha = .6;
image_xscale = scaleFactor;
image_yscale = scaleFactor;





motion_set(random(360), random_range(0.5, 2));