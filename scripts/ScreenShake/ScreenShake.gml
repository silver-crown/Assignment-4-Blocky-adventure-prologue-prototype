/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 27457374
/// @DnDArgument : "code" "/// @ScreenShake(Magnitude,frames)$(13_10)/// @arg Magnitude sets the strength of the shake (radius in pixels$(13_10)/// @arg Frames sets the length of the shake in frames (60 = 1 second at 60fps)$(13_10)$(13_10)with (oCamera)$(13_10){$(13_10)	if (argument0 > shake_remain)$(13_10)	{$(13_10)		shake_magnitude = argument0;$(13_10)		shake_remain = argument0;$(13_10)		shake_length = argument1;$(13_10)	$(13_10)	}$(13_10)$(13_10)}"
/// @ScreenShake(Magnitude,frames)
/// @arg Magnitude sets the strength of the shake (radius in pixels
/// @arg Frames sets the length of the shake in frames (60 = 1 second at 60fps)

with (oCamera)
{
	if (argument0 > shake_remain)
	{
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	
	}

}