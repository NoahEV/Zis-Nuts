/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 20C84ED3
/// @DnDArgument : "direction" "point_direction(0, 0, global.attackDirectionX, global.attackDirectionY)"
direction = point_direction(0, 0, global.attackDirectionX, global.attackDirectionY);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 42A0230F
/// @DnDArgument : "angle" "point_direction(0, 0, global.attackDirectionX, global.attackDirectionY) "
image_angle = point_direction(0, 0, global.attackDirectionX, global.attackDirectionY) ;