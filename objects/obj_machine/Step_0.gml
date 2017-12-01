/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EA0F0B8
/// @DnDArgument : "code" "if (place_meeting(x,y,obj_player))$(13_10){$(13_10)	if (detonation = false)$(13_10)	{$(13_10)	if (keyboard_check_pressed(vk_enter))$(13_10)	{$(13_10)		detonation = true;$(13_10)		alarm[0] = 100;$(13_10)		timerSet = true;$(13_10)		instance_create_layer(x,y,"Timer",obj_timer);$(13_10)		ScreenShake(16,6300);$(13_10)	audio_stop_all();$(13_10)	audio_play_sound(soundEscape,10,true);$(13_10)		$(13_10)		with (secret_wall)$(13_10)		{$(13_10)			instance_create_layer(x,y,"instances",obj_break);$(13_10)		instance_destroy();$(13_10)		$(13_10)	}$(13_10)}$(13_10)}$(13_10)}"
if (place_meeting(x,y,obj_player))
{
	if (detonation = false)
	{
	if (keyboard_check_pressed(vk_enter))
	{
		detonation = true;
		alarm[0] = 100;
		timerSet = true;
		instance_create_layer(x,y,"Timer",obj_timer);
		ScreenShake(16,6300);
	audio_stop_all();
	audio_play_sound(soundEscape,10,true);
		
		with (secret_wall)
		{
			instance_create_layer(x,y,"instances",obj_break);
		instance_destroy();
		
	}
}
}
}