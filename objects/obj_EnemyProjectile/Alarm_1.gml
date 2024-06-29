/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 45C5BBE3
/// @DnDArgument : "speed" "clamp(power(speed, 2), 1, 20)"
speed = clamp(power(speed, 2), 1, 20);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 003D2894
/// @DnDArgument : "steps" "10"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 10);