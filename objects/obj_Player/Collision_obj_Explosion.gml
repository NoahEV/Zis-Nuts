/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4912E285
/// @DnDArgument : "var" "canPlayerBeDamaged"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(canPlayerBeDamaged >= 1)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 1EB2C194
	/// @DnDParent : 4912E285
	/// @DnDArgument : "soundid" "tomei_dano"
	/// @DnDSaveInfo : "soundid" "tomei_dano"
	audio_play_sound(tomei_dano, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25F50AD3
	/// @DnDParent : 4912E285
	/// @DnDArgument : "var" "canPlayerBeDamaged"
	canPlayerBeDamaged = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35F9FA0E
	/// @DnDParent : 4912E285
	/// @DnDArgument : "expr" "-33"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.playerCurrentHealth"
	global.playerCurrentHealth += -33;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 163509C3
	/// @DnDParent : 4912E285
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);
}