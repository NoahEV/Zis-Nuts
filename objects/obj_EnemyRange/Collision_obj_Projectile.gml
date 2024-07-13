/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 355B418D
/// @DnDArgument : "var" "canBeDamaged"
/// @DnDArgument : "value" "1"
if(canBeDamaged == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C13085D
	/// @DnDParent : 355B418D
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "localHealth"
	localHealth += -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38134B81
	/// @DnDParent : 355B418D
	/// @DnDArgument : "var" "canBeDamaged"
	canBeDamaged = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A57D983
	/// @DnDParent : 355B418D
	/// @DnDArgument : "var" "canMove"
	canMove = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1B9AE2D5
	/// @DnDParent : 355B418D
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 60);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1191401E
	/// @DnDParent : 355B418D
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 30);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17DE08CF
/// @DnDArgument : "var" "localHealth"
/// @DnDArgument : "op" "3"
if(localHealth <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 249FBC0C
	/// @DnDParent : 17DE08CF
	instance_destroy();
}