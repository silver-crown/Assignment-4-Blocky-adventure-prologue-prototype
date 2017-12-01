/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0460ABB2
/// @DnDArgument : "code" "draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_set_font(fnt_large);$(13_10)draw_set_color(c_white);$(13_10)draw_text(camera_get_view_width(view_camera[0])/2,camera_get_view_height(view_camera[0])/2 - 300,"Game over");$(13_10)draw_set_font(fnt_small);$(13_10)draw_text(camera_get_view_width(view_camera[0])/2,camera_get_view_height(view_camera[0])/2 + 200,"Press Enter to restart");"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_large);
draw_set_color(c_white);
draw_text(camera_get_view_width(view_camera[0])/2,camera_get_view_height(view_camera[0])/2 - 300,"Game over");
draw_set_font(fnt_small);
draw_text(camera_get_view_width(view_camera[0])/2,camera_get_view_height(view_camera[0])/2 + 200,"Press Enter to restart");