/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 132897FF
/// @DnDArgument : "code" "if (place_meeting(x,y,obj_player))$(13_10){$(13_10)instance_create_layer(x,y,"Enemy",obj_red);$(13_10)instance_destroy();$(13_10)}$(13_10)"
if (place_meeting(x,y,obj_player))
{
instance_create_layer(x,y,"Enemy",obj_red);
instance_destroy();
}