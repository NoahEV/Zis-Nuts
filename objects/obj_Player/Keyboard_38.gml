/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 327F21A7
/// @DnDArgument : "var" "global.canPlayerMove"
/// @DnDArgument : "value" "1"
if(global.canPlayerMove == 1)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 556E7737
	/// @DnDParent : 327F21A7
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-4"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_Wall"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_Wall"
	var l556E7737_0 = instance_place(x + 0, y + -4, [obj_Wall]);
	if (!(l556E7737_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 2A5EAC38
		/// @DnDParent : 556E7737
		/// @DnDArgument : "x" "0"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-4"
		/// @DnDArgument : "y_relative" "1"
		x += 0;
		y += -4;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 524F2E9D
		/// @DnDParent : 556E7737
		/// @DnDArgument : "value" "-1"
		/// @DnDArgument : "var" "global.playerDirectionY"
		global.playerDirectionY = -1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 33B2BEA7
		/// @DnDParent : 556E7737
		/// @DnDArgument : "var" "global.playerDirectionX"
		global.playerDirectionX = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 362A52E6
		/// @DnDParent : 556E7737
		/// @DnDArgument : "direction" "90"
		direction = 90;
	}
}