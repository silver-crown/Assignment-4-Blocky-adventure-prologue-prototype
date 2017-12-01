/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 263C04AC
/// @DnDArgument : "code" "if (place_meeting(x,y,obj_player)) $(13_10){$(13_10)	with (obj_lava2)$(13_10)	{$(13_10)		vsp = -3.5;$(13_10)		$(13_10)	}$(13_10)instance_create_layer(950,4830,"Enemy",obj_triton);$(13_10)audio_play_sound(soundStampede,200,true);$(13_10)instance_destroy();$(13_10)}$(13_10)"
if (place_meeting(x,y,obj_player)) 
{
	with (obj_lava2)
	{
		vsp = -3.5;
		
	}
instance_create_layer(950,4830,"Enemy",obj_triton);
audio_play_sound(soundStampede,200,true);
instance_destroy();
}