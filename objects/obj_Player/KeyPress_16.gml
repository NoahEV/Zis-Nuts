/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E56715C
/// @DnDArgument : "var" "global.isDashing && dashTimeCounter < global.playerDashDuration"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
if(!(global.isDashing && dashTimeCounter < global.playerDashDuration == 1))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BC73DEE
	/// @DnDParent : 2E56715C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.isDashing"
	global.isDashing = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 511BF72B
	/// @DnDParent : 2E56715C
	/// @DnDArgument : "var" "global.canPlayerBeDamaged"
	global.canPlayerBeDamaged = 0;

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