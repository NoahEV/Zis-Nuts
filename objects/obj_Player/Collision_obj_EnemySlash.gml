/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 73A75875
/// @DnDArgument : "var" "global.canPlayerBeDamaged"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(global.canPlayerBeDamaged >= 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B9C0C83
	/// @DnDParent : 73A75875
	/// @DnDArgument : "var" "global.canPlayerBeDamaged"
	global.canPlayerBeDamaged = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 068D71B4
	/// @DnDParent : 73A75875
	alarm_set(0, 30);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BC12427
	/// @DnDParent : 73A75875
	/// @DnDArgument : "expr" "-33"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.playerCurrentHealth"
	global.playerCurrentHealth += -33;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5AC423AD
	/// @DnDParent : 73A75875
	/// @DnDArgument : "code" "var shake = instance_create_layer(0, 0, layer, obj_ScreenShake);$(13_10)shake.shake = 2;"
	var shake = instance_create_layer(0, 0, layer, obj_ScreenShake);
	shake.shake = 2;
}