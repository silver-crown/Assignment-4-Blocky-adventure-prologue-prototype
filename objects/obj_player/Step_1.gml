/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4DB216A0
/// @DnDArgument : "code" "$(13_10)if ( 0 >= hp)$(13_10){$(13_10)	with(instance_create_depth(x,y,1,oDead))$(13_10)	{$(13_10)		$(13_10)		$(13_10)	}$(13_10)	audio_play_sound(soundDeath,10,0);$(13_10)	instance_create_depth(0,0,0,obj_Gameover);$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)"

if ( 0 >= hp)
{
	with(instance_create_depth(x,y,1,oDead))
	{
		
		
	}
	audio_play_sound(soundDeath,10,0);
	instance_create_depth(0,0,0,obj_Gameover);
	instance_destroy();
}