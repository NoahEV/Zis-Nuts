/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66D0DBD6
/// @DnDArgument : "var" "global.canPlayerMove"
/// @DnDArgument : "value" "1"
if(global.canPlayerMove == 1)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5AF5A3E2
	/// @DnDParent : 66D0DBD6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "4"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_Box"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_Box"
	var l5AF5A3E2_0 = instance_place(x + 0, y + 4, [obj_Box]);
	if (!(l5AF5A3E2_0 > 0))
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 7CEEA38F
		/// @DnDParent : 5AF5A3E2
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "4"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_Wall"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "obj_Wall"
		var l7CEEA38F_0 = instance_place(x + 0, y + 4, [obj_Wall]);
		if (!(l7CEEA38F_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 15FD5756
			/// @DnDParent : 7CEEA38F
			/// @DnDArgument : "var" "global.playerDirectionY"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "1"
			if(!(global.playerDirectionY == 1))
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 012B6A66
				/// @DnDParent : 15FD5756
				/// @DnDArgument : "spriteind" "zibo_frente_andando"
				/// @DnDSaveInfo : "spriteind" "zibo_frente_andando"
				sprite_index = zibo_frente_andando;
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 31418B74
				/// @DnDParent : 15FD5756
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "global.playerDirectionY"
				global.playerDirectionY = 1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 556F2DC5
				/// @DnDParent : 15FD5756
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "isMoving"
				isMoving = 1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 561EDF2E
				/// @DnDParent : 15FD5756
				/// @DnDArgument : "var" "global.playerDirectionX"
				global.playerDirectionX = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0E2ABA9D
				/// @DnDParent : 15FD5756
				/// @DnDArgument : "var" "global.attackDirectionX"
				global.attackDirectionX = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5BB9DDEA
				/// @DnDParent : 15FD5756
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "global.attackDirectionY"
				global.attackDirectionY = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 519FA82D
			/// @DnDParent : 7CEEA38F
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "isMoving"
			isMoving = 1;
		
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
		
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 12C7B1B0
			/// @DnDParent : 7CEEA38F
			/// @DnDArgument : "direction" "270"
			direction = 270;
		}
	}
}