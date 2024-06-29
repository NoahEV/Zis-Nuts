/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77C78362
/// @DnDArgument : "var" "global.isMoving"
if(global.isMoving == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 297D0362
	/// @DnDParent : 77C78362
	/// @DnDArgument : "spriteind" "zibo_idle"
	/// @DnDSaveInfo : "spriteind" "zibo_idle"
	sprite_index = zibo_idle;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 0B08929E
	/// @DnDParent : 77C78362
	image_xscale = 1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C21862E
	/// @DnDParent : 77C78362
	/// @DnDArgument : "var" "global.playerDirectionX"
	global.playerDirectionX = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FBEE30C
	/// @DnDParent : 77C78362
	/// @DnDArgument : "var" "global.playerDirectionY"
	global.playerDirectionY = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2152FA6E
/// @DnDArgument : "var" "global.isMoving"
global.isMoving = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5CCEA09D
/// @DnDArgument : "var" "global.playerCurrentHealth"
/// @DnDArgument : "op" "3"
if(global.playerCurrentHealth <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 772AE605
	/// @DnDParent : 5CCEA09D
	/// @DnDArgument : "var" "global.playerCurrentHealth"
	global.playerCurrentHealth = 0;

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6333D4D5
	/// @DnDParent : 5CCEA09D
	/// @DnDArgument : "colour" "$FF0000FF"
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 480682BA
/// @DnDArgument : "expr" "delta_time"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "dashTimeCounter"
dashTimeCounter += delta_time;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02C51BEA
/// @DnDArgument : "var" "dashTimeCounter > global.playerDashDuration"
/// @DnDArgument : "value" "1"
if(dashTimeCounter > global.playerDashDuration == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4D104B17
	/// @DnDParent : 02C51BEA
	speed = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 47238A26
/// @DnDArgument : "expr" "point_direction(x, y, mouse_x, mouse_y)"
/// @DnDArgument : "var" "global.playerDirection"
global.playerDirection = point_direction(x, y, mouse_x, mouse_y);