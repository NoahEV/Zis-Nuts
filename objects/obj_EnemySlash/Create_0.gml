/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 20C84ED3
/// @DnDArgument : "direction" "point_direction(x, y, obj_Player.x, obj_Player.y) "
direction = point_direction(x, y, obj_Player.x, obj_Player.y) ;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 42A0230F
/// @DnDArgument : "angle" "point_direction(x, y, obj_Player.x, obj_Player.y) "
image_angle = point_direction(x, y, obj_Player.x, obj_Player.y) ;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4615B54A
/// @DnDArgument : "speed" "1.5"
speed = 1.5;