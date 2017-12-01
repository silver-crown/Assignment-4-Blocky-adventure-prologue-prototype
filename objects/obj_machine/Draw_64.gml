/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 77B17121
/// @DnDArgument : "code" "if (place_meeting(x,y,obj_player))$(13_10){$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(IntroEnd);$(13_10)draw_text(300,288,"Press Enter to set the Detonation")$(13_10)}"
if (place_meeting(x,y,obj_player))
{
draw_set_color(c_white);
draw_set_font(IntroEnd);
draw_text(300,288,"Press Enter to set the Detonation")
}