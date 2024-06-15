/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0FF18484
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 20C84ED3
/// @DnDArgument : "direction" "180 * clamp(global.playerDirectionX, -1, 0)  + -90 * global.playerDirectionY"
direction = 180 * clamp(global.playerDirectionX, -1, 0)  + -90 * global.playerDirectionY;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 42A0230F
/// @DnDArgument : "angle" "180 * clamp(global.playerDirectionX, -1, 0)  + -90 * global.playerDirectionY - 90"
image_angle = 180 * clamp(global.playerDirectionX, -1, 0)  + -90 * global.playerDirectionY - 90;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4615B54A
/// @DnDArgument : "speed" ".5"
speed = .5;