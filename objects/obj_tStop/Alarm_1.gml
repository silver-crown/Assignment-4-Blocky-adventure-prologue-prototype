/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 487D4FE3
/// @DnDArgument : "code" "myTextbox = noone;$(13_10)with (obj_player)$(13_10){$(13_10)	hascontrol = 1;$(13_10)}$(13_10)instance_destroy();"
myTextbox = noone;
with (obj_player)
{
	hascontrol = 1;
}
instance_destroy();