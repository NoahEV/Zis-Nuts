/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 78D1E7D9
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_Explosion"
/// @DnDSaveInfo : "objectid" "obj_Explosion"
instance_create_layer(x + 0, y + 0, "Instances", obj_Explosion);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 628DC497
instance_destroy();