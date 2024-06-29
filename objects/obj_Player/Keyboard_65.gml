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
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7FA1C363
		/// @DnDParent : 468E239A
		/// @DnDArgument : "var" "global.playerDirectionX"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "-1"
		if(!(global.playerDirectionX == -1))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 2F235B8A
			/// @DnDParent : 7FA1C363
			/// @DnDArgument : "spriteind" "zibo_lado_andando"
			/// @DnDSaveInfo : "spriteind" "zibo_lado_andando"
			sprite_index = zibo_lado_andando;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 28903B5B
			/// @DnDParent : 7FA1C363
			/// @DnDArgument : "xscale" "-1"
			image_xscale = -1;
			image_yscale = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4D9408AD
			/// @DnDParent : 7FA1C363
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "global.playerDirectionX"
			global.playerDirectionX = -1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A04E85D
			/// @DnDParent : 7FA1C363
			/// @DnDArgument : "var" "global.playerDirectionY"
			global.playerDirectionY = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1A782A7A
			/// @DnDParent : 7FA1C363
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "global.attackDirectionX"
			global.attackDirectionX = -1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 57CB1E67
			/// @DnDParent : 7FA1C363
			/// @DnDArgument : "var" "global.attackDirectionY"
			global.attackDirectionY = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7BC6CA2A
			/// @DnDParent : 7FA1C363
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "global.isMoving"
			global.isMoving = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5730B408
		/// @DnDParent : 468E239A
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.isMoving"
		global.isMoving = 1;
	
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