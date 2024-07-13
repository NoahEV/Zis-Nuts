/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3FF3CAE0
/// @DnDArgument : "var" "global.playerCurrentHealth"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
if(global.playerCurrentHealth < 100)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 7565549B
	/// @DnDParent : 3FF3CAE0
	/// @DnDArgument : "soundid" "cura"
	/// @DnDSaveInfo : "soundid" "cura"
	audio_play_sound(cura, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AA929DE
	/// @DnDParent : 3FF3CAE0
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "var" "global.playerCurrentHealth"
	global.playerCurrentHealth = 100;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 636DE176
	/// @DnDParent : 3FF3CAE0
	instance_destroy();
}