/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 326F3EFB
/// @DnDArgument : "var" "global.canPlayerMove"
/// @DnDArgument : "value" "1"
if(global.canPlayerMove == 1)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 13BC1082
	/// @DnDParent : 326F3EFB
	/// @DnDArgument : "soundid" "ataque"
	/// @DnDSaveInfo : "soundid" "ataque"
	audio_play_sound(ataque, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3D5E495B
	/// @DnDParent : 326F3EFB
	/// @DnDArgument : "xpos" "global.attackDirectionX * 70"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "global.attackDirectionY* 70"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "slashInstance"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_Slash"
	/// @DnDSaveInfo : "objectid" "obj_Slash"
	var slashInstance = instance_create_layer(x + global.attackDirectionX * 70, y + global.attackDirectionY* 70, "Instances", obj_Slash);
}