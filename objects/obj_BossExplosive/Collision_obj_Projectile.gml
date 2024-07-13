/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 48AE0845
/// @DnDArgument : "var" "canBeDamaged"
/// @DnDArgument : "value" "1"
if(canBeDamaged == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3564A62E
	/// @DnDParent : 48AE0845
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "localHealth"
	localHealth += -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 770DD728
	/// @DnDParent : 48AE0845
	/// @DnDArgument : "var" "canBeDamaged"
	canBeDamaged = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FD7C6CC
	/// @DnDParent : 48AE0845
	/// @DnDArgument : "var" "canMove"
	canMove = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3FC2C6F0
	/// @DnDParent : 48AE0845
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 60);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1E344786
	/// @DnDParent : 48AE0845
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 30);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 14572711
/// @DnDArgument : "var" "localHealth"
/// @DnDArgument : "op" "3"
if(localHealth <= 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4FE3D881
	/// @DnDParent : 14572711
	/// @DnDArgument : "code" "show_message("Você fugiu da dungeon e conquistou sua liberdade, parabéns!!!")"
	show_message("Você fugiu da dungeon e conquistou sua liberdade, parabéns!!!")

	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2B6F59E4
	/// @DnDParent : 14572711
	audio_stop_all();

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3C577E39
	/// @DnDParent : 14572711
	/// @DnDArgument : "room" "Menu"
	/// @DnDSaveInfo : "room" "Menu"
	room_goto(Menu);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7977AB34
	/// @DnDParent : 14572711
	instance_destroy();
}