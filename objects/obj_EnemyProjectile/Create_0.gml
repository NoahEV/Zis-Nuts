/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0FF18484
/// @DnDArgument : "steps" "90"
alarm_set(0, 90);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 650B6DAE
/// @DnDArgument : "steps" "10"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 10);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 2B71432B
/// @DnDArgument : "direction" "point_direction(x, y, obj_Player.x, obj_Player.y)"
direction = point_direction(x, y, obj_Player.x, obj_Player.y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 03CA7807
/// @DnDArgument : "angle" "point_direction(x, y, obj_Player.x, obj_Player.y) - 90 "
image_angle = point_direction(x, y, obj_Player.x, obj_Player.y) - 90 ;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 37E6224E
/// @DnDArgument : "speed" "1.2"
speed = 1.2;