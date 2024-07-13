/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5A75359B
/// @DnDArgument : "var" "randomNum"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "10"
var randomNum = floor(random_range(0, 10 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 14F075AB
/// @DnDArgument : "var" "randomNum"
/// @DnDArgument : "value" "1"
if(randomNum == 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7C13348E
	/// @DnDParent : 14F075AB
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_HealPotionCollectable"
	/// @DnDSaveInfo : "objectid" "obj_HealPotionCollectable"
	instance_create_layer(x + 0, y + 0, "Instances", obj_HealPotionCollectable);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F99E982
/// @DnDArgument : "var" "randomNum"
if(randomNum == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 57F27C65
	/// @DnDParent : 5F99E982
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_EnemyBomb"
	/// @DnDSaveInfo : "objectid" "obj_EnemyBomb"
	instance_create_layer(x + 0, y + 0, "Instances", obj_EnemyBomb);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 05E863F6
instance_destroy();