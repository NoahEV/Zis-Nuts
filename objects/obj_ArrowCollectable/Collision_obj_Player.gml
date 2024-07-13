/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D06F648
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.arrowsNumber"
global.arrowsNumber += 5;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 74C6C302
/// @DnDArgument : "soundid" "pegar_item_random"
/// @DnDSaveInfo : "soundid" "pegar_item_random"
audio_play_sound(pegar_item_random, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4BE98D8D
instance_destroy();