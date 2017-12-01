/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5444FE52
/// @DnDArgument : "code" "//Screen shake$(13_10)$(13_10)view_camera[0].x += random_range (-shake_renain,shake_remain);$(13_10)view_camera[0].y += random_range(-shake_remain,shake_remain);$(13_10)shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));"
//Screen shake

view_camera[0].x += random_range (-shake_renain,shake_remain);
view_camera[0].y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));