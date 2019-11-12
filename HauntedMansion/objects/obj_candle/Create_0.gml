var new = instance_create_layer(x,y-8,layer,obj_flicker);
new.light_radius = 128;
new.light_green = 64;
new.light_blue = 0;
new.flicker_min = 0.2;
new.flicker_max = 0.5;
new.flicker_change = 0.05;

new = instance_create_layer(x,y-8,layer,obj_flicker);
new.light_radius = 16;
new.light_green = 64;
new.light_blue = 0;
new.flicker_min = 0.7;
new.flicker_max = 0.9;
new.flicker_change = 0.3;