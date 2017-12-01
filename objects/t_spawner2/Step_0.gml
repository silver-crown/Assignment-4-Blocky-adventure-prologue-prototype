/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 263C04AC
/// @DnDArgument : "code" "if (place_meeting(x,y,obj_player)) $(13_10){$(13_10)instance_create_layer(2000,40,"Enemy",obj_triton);$(13_10)instance_destroy();$(13_10)}$(13_10)"
if (place_meeting(x,y,obj_player)) 
{
instance_create_layer(2000,40,"Enemy",obj_triton);
instance_destroy();
}