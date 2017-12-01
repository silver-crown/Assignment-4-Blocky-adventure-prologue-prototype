/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43C01352
/// @DnDArgument : "code" "if (place_meeting(x,y,obj_player))$(13_10){$(13_10)camera_set_view_pos(view_camera[0],view_camera[0],0);$(13_10)xpos = max(xpos-0.5,0);$(13_10)$(13_10)if (!fadeout) a = max(a-0.020,0);  else a = min(a+0.010,1);$(13_10)$(13_10)$(13_10)if  (xpos < 100) fadeout = 1;$(13_10)$(13_10)if (a == 1) && (fadeout == 1) room_goto(room2);$(13_10)}"
if (place_meeting(x,y,obj_player))
{
camera_set_view_pos(view_camera[0],view_camera[0],0);
xpos = max(xpos-0.5,0);

if (!fadeout) a = max(a-0.020,0);  else a = min(a+0.010,1);


if  (xpos < 100) fadeout = 1;

if (a == 1) && (fadeout == 1) room_goto(room2);
}