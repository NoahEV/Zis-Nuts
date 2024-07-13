/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 428B902B
/// @DnDArgument : "var" "randomNum"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "10"
var randomNum = floor(random_range(0, 10 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F1FC8F7
/// @DnDArgument : "var" "randomNum"
/// @DnDArgument : "value" "1"
if(randomNum == 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2EBBD775
	/// @DnDParent : 7F1FC8F7
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_HealPotionCollectable"
	/// @DnDSaveInfo : "objectid" "obj_HealPotionCollectable"
	instance_create_layer(x + 0, y + 0, "Instances", obj_HealPotionCollectable);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 20BC81B2
	/// @DnDParent : 7F1FC8F7
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A48EDC0
/// @DnDArgument : "var" "randomNum"
if(randomNum == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 04830B79
	/// @DnDParent : 1A48EDC0
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_EnemyBomb"
	/// @DnDSaveInfo : "objectid" "obj_EnemyBomb"
	instance_create_layer(x + 0, y + 0, "Instances", obj_EnemyBomb);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 00C4D0CD
	/// @DnDParent : 1A48EDC0
	instance_destroy();
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1923712C
instance_destroy();