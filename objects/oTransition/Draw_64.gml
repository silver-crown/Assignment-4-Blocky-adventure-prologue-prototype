/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2621FAED
/// @DnDArgument : "code" "///@desc draw black bars$(13_10)$(13_10)if (mode != TRANS_MODE.OFF)$(13_10){$(13_10)	draw_set_color(c_black);$(13_10)	draw_rectangle(0,0,w,percent*h_half,false);$(13_10)	draw_rectangle(0,h,w,h-(percent*h_half),false);$(13_10)}$(13_10)draw_set_color(c_white);"
///@desc draw black bars

if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,w,percent*h_half,false);
	draw_rectangle(0,h,w,h-(percent*h_half),false);
}
draw_set_color(c_white);