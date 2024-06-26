/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5CEF1B2E
/// @DnDArgument : "var" "global.canPlayerBeDamaged"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(global.canPlayerBeDamaged >= 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 078983F8
	/// @DnDParent : 5CEF1B2E
	/// @DnDArgument : "var" "global.canPlayerBeDamaged"
	global.canPlayerBeDamaged = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0BE738DC
	/// @DnDParent : 5CEF1B2E
	alarm_set(0, 30);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 219D68E2
	/// @DnDParent : 5CEF1B2E
	/// @DnDArgument : "expr" "-33"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.playerCurrentHealth"
	global.playerCurrentHealth += -33;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 06452A0B
	/// @DnDParent : 5CEF1B2E
	/// @DnDArgument : "code" "var shake = instance_create_layer(0, 0, layer, obj_ScreenShake);$(13_10)shake.shake = 3;"
	var shake = instance_create_layer(0, 0, layer, obj_ScreenShake);
	shake.shake = 3;
}