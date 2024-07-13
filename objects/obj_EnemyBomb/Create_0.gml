/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0FF18484
/// @DnDArgument : "steps" "150"
alarm_set(0, 150);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 31F407BE
/// @DnDArgument : "expr" "obj_Player.x"
/// @DnDArgument : "var" "posX"
posX = obj_Player.x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7DE9E5A5
/// @DnDArgument : "expr" "obj_Player.y"
/// @DnDArgument : "var" "posY"
posY = obj_Player.y;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 7E7E2EA0
/// @DnDArgument : "x" "posX"
/// @DnDArgument : "y" "posY"
direction = point_direction(x, y, posX, posY);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4ABCF623
/// @DnDArgument : "speed" "2"
speed = 2;