/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 7960F268
/// @DnDArgument : "x1" "-50"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-60"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "50"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-40"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "global.playerCurrentHealth"
/// @DnDArgument : "backcol" "$FF4F4F4F"
/// @DnDArgument : "barcol" "$FF0C0C0C"
/// @DnDArgument : "mincol" "$FF08FF00"
/// @DnDArgument : "maxcol" "$FF08FF00"
draw_healthbar(x + -50, y + -60, x + 50, y + -40, global.playerCurrentHealth, $FF4F4F4F & $FFFFFF, $FF08FF00 & $FFFFFF, $FF08FF00 & $FFFFFF, 0, (($FF4F4F4F>>24) != 0), (($FF0C0C0C>>24) != 0));