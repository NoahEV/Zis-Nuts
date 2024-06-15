/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2BB723B4
/// @DnDArgument : "var" "global.canPlayerMove"
/// @DnDArgument : "value" "1"
if(global.canPlayerMove == 1)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 3DA67CAC
	/// @DnDParent : 2BB723B4
	/// @DnDArgument : "x" "4"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_Wall"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_Wall"
	var l3DA67CAC_0 = instance_place(x + 4, y + 0, [obj_Wall]);
	if (!(l3DA67CAC_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 154829F0
		/// @DnDParent : 3DA67CAC
		/// @DnDArgument : "x" "4"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += 4;
		y += 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 2FEAC94B
		/// @DnDParent : 3DA67CAC
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "global.playerDirectionX"
		global.playerDirectionX = 1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 78AF67F2
		/// @DnDParent : 3DA67CAC
		/// @DnDArgument : "var" "global.playerDirectionY"
		global.playerDirectionY = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 0020BB1F
		/// @DnDParent : 3DA67CAC
		/// @DnDArgument : "direction" "0"
		direction = 0;
	}
}