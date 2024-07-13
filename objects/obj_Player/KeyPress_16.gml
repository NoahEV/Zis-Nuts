/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E56715C
/// @DnDArgument : "var" "isDashing && dashTimeCounter < global.playerDashDuration"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
if(!(isDashing && dashTimeCounter < global.playerDashDuration == 1))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 76069BDC
	/// @DnDParent : 2E56715C
	/// @DnDArgument : "soundid" "dashh"
	/// @DnDSaveInfo : "soundid" "dashh"
	audio_play_sound(dashh, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BC73DEE
	/// @DnDParent : 2E56715C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "isDashing"
	isDashing = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 511BF72B
	/// @DnDParent : 2E56715C
	/// @DnDArgument : "var" "canPlayerBeDamaged"
	canPlayerBeDamaged = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 25648A5C
	/// @DnDParent : 2E56715C
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 773F3563
	/// @DnDParent : 2E56715C
	/// @DnDArgument : "var" "dashTimeCounter"
	dashTimeCounter = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3EE46095
	/// @DnDParent : 2E56715C
	/// @DnDArgument : "speed" "global.dashSpeed"
	speed = global.dashSpeed;
}