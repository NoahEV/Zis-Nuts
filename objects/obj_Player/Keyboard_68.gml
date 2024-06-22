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
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 0020BB1F
		/// @DnDParent : 3DA67CAC
		/// @DnDArgument : "direction" "0"
		direction = 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12E5394D
		/// @DnDParent : 3DA67CAC
		/// @DnDArgument : "var" "global.playerDirectionX"
		if(global.playerDirectionX == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 7E3597BA
			/// @DnDParent : 12E5394D
			/// @DnDArgument : "spriteind" "zibo_side"
			/// @DnDSaveInfo : "spriteind" "zibo_side"
			sprite_index = zibo_side;
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DE010BE
		/// @DnDParent : 3DA67CAC
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.playerDirectionX"
		global.playerDirectionX = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5B163AD8
		/// @DnDParent : 3DA67CAC
		/// @DnDArgument : "var" "global.playerDirectionY"
		global.playerDirectionY = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 35599A08
		/// @DnDParent : 3DA67CAC
		image_xscale = 1;
		image_yscale = 1;
	}
}