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
	/// @DnDArgument : "xpos" "global.playerDirectionX * 50"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "global.playerDirectionY *  50"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_Projectile"
	/// @DnDSaveInfo : "objectid" "obj_Projectile"
	instance_create_layer(x + global.playerDirectionX * 50, y + global.playerDirectionY *  50, "Instances", obj_Projectile);
}