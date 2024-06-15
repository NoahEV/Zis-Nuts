/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 326F3EFB
/// @DnDArgument : "var" "global.canPlayerMove"
/// @DnDArgument : "value" "1"
if(global.canPlayerMove == 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3D5E495B
	/// @DnDParent : 326F3EFB
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "slashInstance"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_Slash"
	/// @DnDSaveInfo : "objectid" "obj_Slash"
	var slashInstance = instance_create_layer(x + 0, y + 0, "Instances", obj_Slash);
}