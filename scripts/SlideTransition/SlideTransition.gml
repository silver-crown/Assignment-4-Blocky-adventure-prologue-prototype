/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EB6E941
/// @DnDArgument : "code" "/// @desc  SlideTransition(mode, targetroom)$(13_10)/// @arg Mode sets transition mode between next, restart and goto.$(13_10)/// @arg Target sets target room when using the goto mode.$(13_10)$(13_10)with (oTransition)$(13_10){$(13_10)	mode = argument[0]; $(13_10)	if (argument_count > 1) target = argument[1];$(13_10)$(13_10)}$(13_10)"
/// @desc  SlideTransition(mode, targetroom)
/// @arg Mode sets transition mode between next, restart and goto.
/// @arg Target sets target room when using the goto mode.

with (oTransition)
{
	mode = argument[0]; 
	if (argument_count > 1) target = argument[1];

}