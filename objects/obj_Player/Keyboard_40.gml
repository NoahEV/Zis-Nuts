/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66D0DBD6
/// @DnDArgument : "var" "global.canPlayerMove"
/// @DnDArgument : "value" "1"
if(global.canPlayerMove == 1)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 7CEEA38F
	/// @DnDParent : 66D0DBD6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "4"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_Wall"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_Wall"
	var l7CEEA38F_0 = instance_place(x + 0, y + 4, [obj_Wall]);
	if (!(l7CEEA38F_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 1C83F386
		/// @DnDParent : 7CEEA38F
		/// @DnDArgument : "x" "0"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "4"
		/// @DnDArgument : "y_relative" "1"
		x += 0;
		y += 4;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 7A96FD44
		/// @DnDParent : 7CEEA38F
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "global.playerDirectionY"
		global.playerDirectionY = 1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 5C8A941D
		/// @DnDParent : 7CEEA38F
		/// @DnDArgument : "var" "global.playerDirectionX"
		global.playerDirectionX = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 12C7B1B0
		/// @DnDParent : 7CEEA38F
		/// @DnDArgument : "direction" "270"
		direction = 270;
	}
}