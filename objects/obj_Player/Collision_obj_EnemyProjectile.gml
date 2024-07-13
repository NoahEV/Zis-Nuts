/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 46AA7199
/// @DnDArgument : "var" "canPlayerBeDamaged"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(canPlayerBeDamaged >= 1)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 77BF3B2D
	/// @DnDParent : 46AA7199
	/// @DnDArgument : "soundid" "tomei_dano"
	/// @DnDSaveInfo : "soundid" "tomei_dano"
	audio_play_sound(tomei_dano, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30D50066
	/// @DnDParent : 46AA7199
	/// @DnDArgument : "var" "canBeDamaged"
	canBeDamaged = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DBC9B9F
	/// @DnDParent : 46AA7199
	/// @DnDArgument : "expr" "-33"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.playerCurrentHealth"
	global.playerCurrentHealth += -33;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 350D1264
	/// @DnDParent : 46AA7199
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);
}