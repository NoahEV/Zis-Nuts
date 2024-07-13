/// @DnDAction : YoYo Games.Cameras.Set_View_Var
/// @DnDVersion : 1
/// @DnDHash : 20FEE0B7
/// @DnDArgument : "var" "1"
/// @DnDArgument : "view" "global.actualCamera"
view_set_visible(global.actualCamera, 0);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 7390A58C
show_debug_message(string("debug message"));

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3D9C48C5
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.actualCamera"
global.actualCamera += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0CE96595
/// @DnDArgument : "expr" "positionToTeleportX"
/// @DnDArgument : "var" "other.x"
other.x = positionToTeleportX;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1FE2B612
/// @DnDArgument : "expr" "positionToTeleportY"
/// @DnDArgument : "var" "other.y"
other.y = positionToTeleportY;

/// @DnDAction : YoYo Games.Cameras.Set_View_Var
/// @DnDVersion : 1
/// @DnDHash : 0D979183
/// @DnDArgument : "var" "1"
/// @DnDArgument : "view" "global.actualCamera"
/// @DnDArgument : "value" "1"
view_set_visible(global.actualCamera, 1);