/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0650067D
/// @DnDArgument : "code" "//update destination$(13_10)if (instance_exists(follow))$(13_10)	{$(13_10)		xTo = follow.x;$(13_10)		yTo = follow.y;$(13_10)	$(13_10)	}$(13_10)	$(13_10)//update object position$(13_10)x += (xTo - x) /10;$(13_10)y += (yTo - y) / 10;$(13_10)$(13_10)x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);$(13_10)y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);$(13_10)//update camera view$(13_10)camera_set_view_pos(cam,x-view_w_half,y-view_h_half);$(13_10)$(13_10)$(13_10)$(13_10)//Screen shake$(13_10)x += random_range(-shake_remain,shake_remain);$(13_10)y += random_range(-shake_remain,shake_remain);$(13_10)shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));$(13_10)$(13_10)"
//update destination
if (instance_exists(follow))
	{
		xTo = follow.x;
		yTo = follow.y;
	
	}
	
//update object position
x += (xTo - x) /10;
y += (yTo - y) / 10;

x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);
//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);



//Screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));