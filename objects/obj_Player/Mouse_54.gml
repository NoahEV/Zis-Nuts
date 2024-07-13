/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7033E24A
/// @DnDArgument : "var" "global.canPlayerMove && global.arrowsNumber > 0"
/// @DnDArgument : "value" "1"
if(global.canPlayerMove && global.arrowsNumber > 0 == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7622B81F
	/// @DnDParent : 7033E24A
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.arrowsNumber"
	global.arrowsNumber += -1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 20BAA89E
	/// @DnDParent : 7033E24A
	/// @DnDArgument : "xpos" "clamp(mouse_x - x, -10, 10)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "clamp(mouse_y - y, -10, 10)"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_Projectile"
	/// @DnDSaveInfo : "objectid" "obj_Projectile"
	instance_create_layer(x + clamp(mouse_x - x, -10, 10), y + clamp(mouse_y - y, -10, 10), "Instances", obj_Projectile);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 1B3276F7
	/// @DnDParent : 7033E24A
	/// @DnDArgument : "soundid" "flesha"
	/// @DnDSaveInfo : "soundid" "flesha"
	audio_play_sound(flesha, 0, 0, 1.0, undefined, 1.0);
}