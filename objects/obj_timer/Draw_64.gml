/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4A321CC3
/// @DnDArgument : "code" "draw_set_font(fnt_timer);$(13_10)draw_set_color(c_white);$(13_10)draw_text(camera_get_view_width(view_camera[0])-700,camera_get_view_height(view_camera[0])-720,"Time Left: " + string(myTime));$(13_10)$(13_10)	"
draw_set_font(fnt_timer);
draw_set_color(c_white);
draw_text(camera_get_view_width(view_camera[0])-700,camera_get_view_height(view_camera[0])-720,"Time Left: " + string(myTime));