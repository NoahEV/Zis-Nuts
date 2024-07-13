/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77C78362
/// @DnDArgument : "var" "isMoving"
if(isMoving == 0)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 0168B657
	/// @DnDParent : 77C78362
	/// @DnDArgument : "soundid" "footstep_concrete_004"
	/// @DnDSaveInfo : "soundid" "footstep_concrete_004"
	var l0168B657_0 = footstep_concrete_004;
	if (audio_is_playing(l0168B657_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 09D26CAE
		/// @DnDParent : 0168B657
		/// @DnDArgument : "soundid" "footstep_concrete_004"
		/// @DnDSaveInfo : "soundid" "footstep_concrete_004"
		audio_stop_sound(footstep_concrete_004);
	}

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 297D0362
	/// @DnDParent : 77C78362
	/// @DnDArgument : "spriteind" "zibo_idle"
	/// @DnDSaveInfo : "spriteind" "zibo_idle"
	sprite_index = zibo_idle;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 0B08929E
	/// @DnDParent : 77C78362
	image_xscale = 1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C21862E
	/// @DnDParent : 77C78362
	/// @DnDArgument : "var" "global.playerDirectionX"
	global.playerDirectionX = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FBEE30C
	/// @DnDParent : 77C78362
	/// @DnDArgument : "var" "global.playerDirectionY"
	global.playerDirectionY = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 75AD889A
else
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 45D71E08
	/// @DnDParent : 75AD889A
	/// @DnDArgument : "soundid" "footstep_concrete_004"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "soundid" "footstep_concrete_004"
	var l45D71E08_0 = footstep_concrete_004;
	if (!audio_is_playing(l45D71E08_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 44FCDD51
		/// @DnDParent : 45D71E08
		/// @DnDArgument : "soundid" "footstep_concrete_004"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "footstep_concrete_004"
		audio_play_sound(footstep_concrete_004, 0, 1, 1.0, undefined, 1.0);
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2152FA6E
/// @DnDArgument : "var" "isMoving"
isMoving = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5CCEA09D
/// @DnDArgument : "var" "global.playerCurrentHealth <= 0 and isDead == 0"
/// @DnDArgument : "value" "1"
if(global.playerCurrentHealth <= 0 and isDead == 0 == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F2AB6A1
	/// @DnDParent : 5CCEA09D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "isDead"
	isDead = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 772AE605
	/// @DnDParent : 5CCEA09D
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "var" "global.playerCurrentHealth"
	global.playerCurrentHealth = 100;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 3780AC96
	/// @DnDParent : 5CCEA09D
	/// @DnDArgument : "soundid" "Game_Over"
	/// @DnDSaveInfo : "soundid" "Game_Over"
	audio_play_sound(Game_Over, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 40BA6374
	/// @DnDParent : 5CCEA09D
	room_restart();
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 480682BA
/// @DnDArgument : "expr" "delta_time"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "dashTimeCounter"
dashTimeCounter += delta_time;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02C51BEA
/// @DnDArgument : "var" "dashTimeCounter > global.playerDashDuration"
/// @DnDArgument : "value" "1"
if(dashTimeCounter > global.playerDashDuration == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4D104B17
	/// @DnDParent : 02C51BEA
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B5C1038
	/// @DnDParent : 02C51BEA
	/// @DnDArgument : "var" "isDashing"
	isDashing = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 01601DF4
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1211F117
	/// @DnDParent : 01601DF4
	/// @DnDArgument : "var" "current_time % .5"
	if(current_time % .5 == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 30ED9404
		/// @DnDParent : 1211F117
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_DashTrail"
		/// @DnDSaveInfo : "objectid" "obj_DashTrail"
		instance_create_layer(x + 0, y + 0, "Instances", obj_DashTrail);
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 47238A26
/// @DnDArgument : "expr" "point_direction(x, y, mouse_x, mouse_y)"
/// @DnDArgument : "var" "global.playerDirection"
global.playerDirection = point_direction(x, y, mouse_x, mouse_y);