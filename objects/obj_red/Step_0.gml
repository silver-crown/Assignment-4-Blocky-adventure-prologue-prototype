/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0AC9F750
/// @DnDArgument : "code" "$(13_10)vsp = vsp + grv;$(13_10)$(13_10)//Horizontal collision$(13_10)if (place_meeting(x+hsp,y,oWall))$(13_10){$(13_10)    while (!place_meeting(x+sign(hsp),y,oWall))$(13_10) {$(13_10)     x = x + sign(hsp);$(13_10) }$(13_10) hsp = -hsp;$(13_10)}$(13_10)x = x + hsp;$(13_10)$(13_10)$(13_10)$(13_10)//Vertical Collision$(13_10)if (place_meeting(x,y+vsp,oWall))$(13_10){$(13_10)    while (!place_meeting(x,y+sign(vsp),oWall))$(13_10) {$(13_10)     y = y + sign(vsp);$(13_10) }$(13_10) vsp = 0;$(13_10)}$(13_10)y = y + vsp;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"

vsp = vsp + grv;

//Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
    while (!place_meeting(x+sign(hsp),y,oWall))
 {
     x = x + sign(hsp);
 }
 hsp = -hsp;
}
x = x + hsp;



//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
    while (!place_meeting(x,y+sign(vsp),oWall))
 {
     y = y + sign(vsp);
 }
 vsp = 0;
}
y = y + vsp;