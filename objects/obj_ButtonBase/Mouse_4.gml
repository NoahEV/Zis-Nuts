/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 03CB58B7
/// @DnDArgument : "expr" "ystart+2"
/// @DnDArgument : "var" "y"
y = ystart+2;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 1504FFD0
/// @DnDArgument : "soundid" "clic_bot_o"
/// @DnDSaveInfo : "soundid" "clic_bot_o"
audio_play_sound(clic_bot_o, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 17E81873
/// @DnDArgument : "steps" "10"
alarm_set(0, 10);