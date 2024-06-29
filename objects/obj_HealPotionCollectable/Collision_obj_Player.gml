/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0EFCB1BE
/// @DnDArgument : "var" "wasUsed"
if(wasUsed == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FF3CAE0
	/// @DnDParent : 0EFCB1BE
	/// @DnDArgument : "var" "global.playerCurrentHealth"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "100"
	if(global.playerCurrentHealth < 100)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3AA929DE
		/// @DnDParent : 3FF3CAE0
		/// @DnDArgument : "expr" "100"
		/// @DnDArgument : "var" "global.playerCurrentHealth"
		global.playerCurrentHealth = 100;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 670715DC
		/// @DnDParent : 3FF3CAE0
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "wasUsed"
		wasUsed = 1;
	}
}