/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 05B0849E
/// @DnDArgument : "soundid" "Ambient_8"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "Ambient_8"
var l05B0849E_0 = Ambient_8;
if (!audio_is_playing(l05B0849E_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 509AC2FE
	/// @DnDParent : 05B0849E
	/// @DnDArgument : "soundid" "Ambient_8"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "Ambient_8"
	audio_play_sound(Ambient_8, 0, 1, 1.0, undefined, 1.0);
}