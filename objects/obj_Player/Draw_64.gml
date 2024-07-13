/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 01DFACF3
/// @DnDArgument : "x" "35"
/// @DnDArgument : "y" "35"
/// @DnDArgument : "sprite" "quiver"
/// @DnDSaveInfo : "sprite" "quiver"
draw_sprite(quiver, 0, 35, 35);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0D02C732
draw_set_colour($FFFFFFFF & $ffffff);
var l0D02C732_0=($FFFFFFFF >> 24);
draw_set_alpha(l0D02C732_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3E466025
/// @DnDArgument : "x" "70"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "global.arrowsNumber"
draw_text(70, 10, string("") + string(global.arrowsNumber));