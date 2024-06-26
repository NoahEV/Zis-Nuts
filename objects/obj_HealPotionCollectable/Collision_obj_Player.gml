/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0EFCB1BE
/// @DnDArgument : "var" "wasUsed"
if(wasUsed == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D06F648
	/// @DnDParent : 0EFCB1BE
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "var" "global.playerCurrentHealth"
	global.playerCurrentHealth = 100;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 186BB42B
	/// @DnDParent : 0EFCB1BE
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "wasUsed"
	wasUsed = 1;
}