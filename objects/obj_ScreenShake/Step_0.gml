/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E5876AE
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)view_xport[0] = random_range(-shake, shake);$(13_10)view_yport[0] = random_range(-shake, shake);$(13_10)$(13_10)$(13_10)shake *= .95;$(13_10)$(13_10)if (shake < .2)$(13_10){$(13_10)	instance_destroy();	$(13_10)}"
/// @description Execute Code
view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);


shake *= .95;

if (shake < .2)
{
	instance_destroy();	
}