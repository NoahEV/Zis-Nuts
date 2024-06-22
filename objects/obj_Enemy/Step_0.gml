/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 55D5EA57
/// @DnDArgument : "var" "distance_to_object(obj_Player)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "200"
if(distance_to_object(obj_Player) < 200)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B110DCE
	/// @DnDParent : 55D5EA57
	/// @DnDArgument : "var" "wandering"
	wandering = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AC9D4A1
	/// @DnDParent : 55D5EA57
	/// @DnDArgument : "var" "distance_to_object(obj_Player)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "80"
	if(distance_to_object(obj_Player) <= 80)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 02249D08
		/// @DnDParent : 7AC9D4A1
		/// @DnDArgument : "var" "canAttack"
		/// @DnDArgument : "value" "1"
		if(canAttack == 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 23A18C17
			/// @DnDParent : 02249D08
			/// @DnDArgument : "var" "canAttack"
			canAttack = 0;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 3A31051B
			/// @DnDParent : 02249D08
			speed = 0;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 48CEEB59
			/// @DnDParent : 02249D08
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_EnemySlash"
			/// @DnDSaveInfo : "objectid" "obj_EnemySlash"
			instance_create_layer(x + 0, y + 0, "Instances", obj_EnemySlash);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 51EE5208
			/// @DnDParent : 02249D08
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 62B2AE5C
	/// @DnDParent : 55D5EA57
	else
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 47FCD0E8
		/// @DnDParent : 62B2AE5C
		/// @DnDArgument : "code" "/// @description Execute Code$(13_10)mp_potential_step_object(obj_Player.x, obj_Player.y, 1, obj_Wall)"
		/// @description Execute Code
		mp_potential_step_object(obj_Player.x, obj_Player.y, 1, obj_Wall)
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6A127140
else
{
	/// @DnDAction : YoYo Games.Instances.Get_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 13CED8DC
	/// @DnDParent : 6A127140
	/// @DnDArgument : "var" "timerCountdown"
	timerCountdown = alarm_get(0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 005595D5
	/// @DnDParent : 6A127140
	/// @DnDArgument : "var" "timerCountdown"
	/// @DnDArgument : "op" "3"
	if(timerCountdown <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5AB0EE8E
		/// @DnDParent : 005595D5
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "wandering"
		wandering = 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 51117837
		/// @DnDParent : 005595D5
		/// @DnDArgument : "steps" "120"
		alarm_set(0, 120);
	}
}