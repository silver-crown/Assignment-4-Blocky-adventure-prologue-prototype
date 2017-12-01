/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43C01352
/// @DnDArgument : "code" "camera_set_view_pos(view_camera[0],xpos,0);$(13_10)xpos = max(xpos-0.5,0);$(13_10)$(13_10)if (!fadeout) a = max(a-0.020,0);  else a = min(a+0.010,1);$(13_10)$(13_10)l += 0.7;$(13_10)$(13_10)print = string_copy(str,1,l);$(13_10)if (l > string_length (str)+100)  && (next < array_length_1d(strings)-1)$(13_10){$(13_10)	l = 0;$(13_10)	next++;$(13_10)	if (next == array_length_1d(strings)-1) holdspace++;$(13_10)$(13_10)}$(13_10)str = strings[next];$(13_10)$(13_10)if (keyboard_check_direct(vk_enter))$(13_10){$(13_10)	holdspace++;$(13_10)	$(13_10)}$(13_10)if (holdspace > 80) || (xpos < 100) fadeout = 1;$(13_10)$(13_10)if (a == 1) && (fadeout == 1) room_goto(room1);"
camera_set_view_pos(view_camera[0],xpos,0);
xpos = max(xpos-0.5,0);

if (!fadeout) a = max(a-0.020,0);  else a = min(a+0.010,1);

l += 0.7;

print = string_copy(str,1,l);
if (l > string_length (str)+100)  && (next < array_length_1d(strings)-1)
{
	l = 0;
	next++;
	if (next == array_length_1d(strings)-1) holdspace++;

}
str = strings[next];

if (keyboard_check_direct(vk_enter))
{
	holdspace++;
	
}
if (holdspace > 80) || (xpos < 100) fadeout = 1;

if (a == 1) && (fadeout == 1) room_goto(room1);