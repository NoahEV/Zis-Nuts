/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4106828D
/// @DnDArgument : "var" "canBeDamaged"
/// @DnDArgument : "value" "1"
if(canBeDamaged == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 444F176F
	/// @DnDParent : 4106828D
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "localHealth"
	localHealth += -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DE34EDF
	/// @DnDParent : 4106828D
	/// @DnDArgument : "var" "canBeDamaged"
	canBeDamaged = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F8EDA08
	/// @DnDParent : 4106828D
	/// @DnDArgument : "var" "canMove"
	canMove = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4AAC32F6
	/// @DnDParent : 4106828D
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 60);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 588C9941
	/// @DnDParent : 4106828D
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 30);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 590C8D66
/// @DnDArgument : "var" "localHealth"
/// @DnDArgument : "op" "3"
if(localHealth <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4CE09EB7
	/// @DnDParent : 590C8D66
	instance_destroy();
}