/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BC965AA
/// @DnDArgument : "var" "wandering"
/// @DnDArgument : "value" "1"
if(wandering == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
	/// @DnDVersion : 1.1
	/// @DnDHash : 607B74CF
	/// @DnDParent : 0BC965AA
	/// @DnDArgument : "direction" "135,90,45,180,0,225,270,315"
	direction = choose(135,90,45,180,0,225,270,315);
}