/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 55D5EA57
/// @DnDArgument : "var" "distance_to_object(obj_Player)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "600"
if(distance_to_object(obj_Player) < 600)
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
	/// @DnDArgument : "var" "(distance_to_object(obj_Player) <= 400) and canAttack"
	/// @DnDArgument : "value" "1"
	if((distance_to_object(obj_Player) <= 400) and canAttack == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 23A18C17
		/// @DnDParent : 7AC9D4A1
		/// @DnDArgument : "var" "canAttack"
		canAttack = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3A31051B
		/// @DnDParent : 7AC9D4A1
		speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 48CEEB59
		/// @DnDParent : 7AC9D4A1
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bombTemp"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_EnemyBomb"
		/// @DnDSaveInfo : "objectid" "obj_EnemyBomb"
		var bombTemp = instance_create_layer(x + 0, y + 0, "Instances", obj_EnemyBomb);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 64688882
		/// @DnDParent : 7AC9D4A1
		/// @DnDArgument : "expr" ".5"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bombTemp.image_xscale"
		bombTemp.image_xscale += .5;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E3DA2CF
		/// @DnDParent : 7AC9D4A1
		/// @DnDArgument : "expr" ".5"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bombTemp.image_yscale"
		bombTemp.image_yscale += .5;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 51EE5208
		/// @DnDParent : 7AC9D4A1
		/// @DnDArgument : "steps" "100"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 100);
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
		/// @DnDArgument : "code" "/// @description Execute Code$(13_10)mp_potential_step_object(obj_Player.x, obj_Player.y, .85, obj_Wall)"
		/// @description Execute Code
		mp_potential_step_object(obj_Player.x, obj_Player.y, .85, obj_Wall)
	}
}