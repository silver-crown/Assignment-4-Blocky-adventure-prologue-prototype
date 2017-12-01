/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43C01352
/// @DnDArgument : "code" "camera_set_view_pos(view_camera[0],0,ypos);$(13_10)ypos = max(ypos+1,0);$(13_10)$(13_10)if (!fadeout) a = max(a-0.020,0);  else a = min(a+0.010,1);$(13_10)$(13_10)$(13_10)if (keyboard_check_direct(vk_enter))$(13_10){$(13_10)	holdspace++;$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)if (holdspace > 80) || (ypos < 100) fadeout = 1;$(13_10)$(13_10)if (a == 1) && (fadeout == 1) room_goto(room6);"
camera_set_view_pos(view_camera[0],0,ypos);
ypos = max(ypos+1,0);

if (!fadeout) a = max(a-0.020,0);  else a = min(a+0.010,1);


if (keyboard_check_direct(vk_enter))
{
	holdspace++;
	
}



if (holdspace > 80) || (ypos < 100) fadeout = 1;

if (a == 1) && (fadeout == 1) room_goto(room6);