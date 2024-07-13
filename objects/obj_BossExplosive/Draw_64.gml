/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 14A94ABF
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 566D7759
/// @DnDArgument : "x" "700"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" ""Chefe Desmiolado""
draw_text_transformed(700, 30, string("Chefe Desmiolado") + "", 2, 2, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 391DFE8E
/// @DnDArgument : "x1" "50"
/// @DnDArgument : "y1" "80"
/// @DnDArgument : "x2" "1320"
/// @DnDArgument : "y2" "130"
/// @DnDArgument : "value" "localHealth/maxHealth * 100"
/// @DnDArgument : "backcol" "$FF4F4F4F"
/// @DnDArgument : "barcol" "$FF0C0C0C"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(50, 80, 1320, 130, localHealth/maxHealth * 100, $FF4F4F4F & $FFFFFF, $FF0000FF & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FF4F4F4F>>24) != 0), (($FF0C0C0C>>24) != 0));