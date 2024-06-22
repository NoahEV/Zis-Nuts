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
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 362A52E6
		/// @DnDParent : 556E7737
		/// @DnDArgument : "direction" "90"
		direction = 90;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 640BBB1C
		/// @DnDParent : 556E7737
		/// @DnDArgument : "var" "global.playerDirectionY"
		if(global.playerDirectionY == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 130C3AF1
			/// @DnDParent : 640BBB1C
			/// @DnDArgument : "spriteind" "zibo_front"
			/// @DnDSaveInfo : "spriteind" "zibo_front"
			sprite_index = zibo_front;
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B166F30
		/// @DnDParent : 556E7737
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "global.playerDirectionY"
		global.playerDirectionY = -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2625222E
		/// @DnDParent : 556E7737
		/// @DnDArgument : "var" "global.playerDirectionX"
		global.playerDirectionX = 0;
	}
}