/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 32BB692D
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "explosionTemp"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_Explosion"
/// @DnDSaveInfo : "objectid" "obj_Explosion"
var explosionTemp = instance_create_layer(x + 0, y + 0, "Instances", obj_Explosion);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35317CBC
/// @DnDArgument : "expr" "image_xscale"
/// @DnDArgument : "var" "explosionTemp.image_xscale"
explosionTemp.image_xscale = image_xscale;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5ABA1F51
/// @DnDArgument : "expr" "image_yscale"
/// @DnDArgument : "var" "explosionTemp.image_yscale"
explosionTemp.image_yscale = image_yscale;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 35DB5C7F
instance_destroy();