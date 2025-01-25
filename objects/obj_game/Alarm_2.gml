// @description spawn projectiles

var heightSegment = room_height /7
var widthSegment = room_width /7

instance_create_layer(random_range(widthSegment*3, widthSegment*4), random_range(heightSegment*3, heightSegment*4), "Instances", obj_powerup_multi)