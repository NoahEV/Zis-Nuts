/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 301CA170
/// @DnDArgument : "var" "canBeDamaged"
/// @DnDArgument : "value" "1"
if(canBeDamaged == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 171E3578
	/// @DnDParent : 301CA170
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "localHealth"
	localHealth += -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 242936F1
	/// @DnDParent : 301CA170
	/// @DnDArgument : "var" "canBeDamaged"
	canBeDamaged = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F809F51
	/// @DnDParent : 301CA170
	/// @DnDArgument : "var" "canMove"
	canMove = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1EC75391
	/// @DnDParent : 301CA170
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 60);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 648C1FD7
	/// @DnDParent : 301CA170
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