/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 38F1EE14
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 58A2ADC3
/// @DnDArgument : "colour" "$78D1FFFB"
image_blend = $78D1FFFB & $ffffff;
image_alpha = ($78D1FFFB >> 24) / $ff;