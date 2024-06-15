/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 114D5025
/// @DnDArgument : "var" "global.canPlayerMove"
/// @DnDArgument : "value" "1"
if(global.canPlayerMove == 1)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 468E239A
	/// @DnDParent : 114D5025
	/// @DnDArgument : "x" "-4"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_Wall "
	/// @DnDArgument : "not" "1"
	var l468E239A_0 = instance_place(x + -4, y + 0, [obj_Wall ]);
	if (!(l468E239A_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 70D72D0B
		/// @DnDParent : 468E239A
		/// @DnDArgument : "x" "-4"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += -4;
		y += 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 77C6F0B3
		/// @DnDParent : 468E239A
		/// @DnDArgument : "direction" "180"
		direction = 180;
	}
}