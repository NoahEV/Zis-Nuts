/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05D0352B
/// @DnDArgument : "var" "canPlayerBeDamaged"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(canPlayerBeDamaged >= 1)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 433FAC3F
	/// @DnDParent : 05D0352B
	/// @DnDArgument : "soundid" "tomei_dano"
	/// @DnDSaveInfo : "soundid" "tomei_dano"
	audio_play_sound(tomei_dano, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DD41A3B
	/// @DnDParent : 05D0352B
	/// @DnDArgument : "var" "canBeDamaged"
	canBeDamaged = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67F97291
	/// @DnDParent : 05D0352B
	/// @DnDArgument : "expr" "-33"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.playerCurrentHealth"
	global.playerCurrentHealth += -33;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 15A0056C
	/// @DnDParent : 05D0352B
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);
}