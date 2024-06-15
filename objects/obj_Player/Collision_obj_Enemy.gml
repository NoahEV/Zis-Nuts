/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 73A75875
/// @DnDArgument : "var" "global.canPlayerBeDamaged"
/// @DnDArgument : "value" "1"
if(global.canPlayerBeDamaged == 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 068D71B4
	/// @DnDParent : 73A75875
	/// @DnDArgument : "steps" "3600"
	alarm_set(0, 3600);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B9C0C83
	/// @DnDParent : 73A75875
	/// @DnDArgument : "var" "global.canPlayerBeDamaged"
	global.canPlayerBeDamaged = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BC12427
	/// @DnDParent : 73A75875
	/// @DnDArgument : "expr" "-33"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.playerCurrentHealth"
	global.playerCurrentHealth += -33;
}