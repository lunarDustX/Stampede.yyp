/// @description plot creation
var differentMan = instance_create_layer(x-350, 96, "Instances", o_man);
differentMan.spd *= -1;
differentMan.dir = 1;
instance_create_layer(x+350, 96, "Instances", o_man);


