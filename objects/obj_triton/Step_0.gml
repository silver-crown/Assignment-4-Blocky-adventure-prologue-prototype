/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0AC9F750
/// @DnDArgument : "code" "if (hsp > 0)$(13_10){$(13_10)image_xscale = -1;$(13_10)}$(13_10)else$(13_10){$(13_10)	image_xscale = 1;$(13_10)}$(13_10)$(13_10)if (moving)$(13_10){$(13_10)vsp = vsp + grv;$(13_10)$(13_10)//Horizontal collision$(13_10)if (place_meeting(x+hsp,y,oWall))$(13_10){$(13_10)    while (!place_meeting(x+sign(hsp),y,oWall))$(13_10) {$(13_10)     x = x + sign(hsp);$(13_10) }$(13_10) hsp = -hsp;$(13_10)}$(13_10)x = x + hsp;$(13_10)$(13_10)$(13_10)$(13_10)//Vertical Collision$(13_10)if (place_meeting(x,y+vsp,oWall))$(13_10){$(13_10)    while (!place_meeting(x,y+sign(vsp),oWall))$(13_10) {$(13_10)     y = y + sign(vsp);$(13_10) }$(13_10) vsp = 0;$(13_10)}$(13_10)y = y + vsp;$(13_10)$(13_10)} else $(13_10){ $(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)if (place_meeting(x,y+vsp,jWall))$(13_10)$(13_10)vsp = -30;$(13_10)$(13_10)if (place_meeting(x,y+vsp,jWall2))$(13_10){$(13_10)vsp = -40;$(13_10)hsp = -hsp;$(13_10)}$(13_10)$(13_10)if (place_meeting(x,y+vsp,jWall3))$(13_10){$(13_10)vsp = -20;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)if (place_meeting(x,y+vsp,jWall4))$(13_10){$(13_10)vsp = -40;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)if (place_meeting(x,y+vsp,jwall5))$(13_10){$(13_10)hsp = 0;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
if (hsp > 0)
{
image_xscale = -1;
}
else
{
	image_xscale = 1;
}

if (moving)
{
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

} else 
{ 
	hsp = 0;
}

if (place_meeting(x,y+vsp,jWall))

vsp = -30;

if (place_meeting(x,y+vsp,jWall2))
{
vsp = -40;
hsp = -hsp;
}

if (place_meeting(x,y+vsp,jWall3))
{
vsp = -20;

}


if (place_meeting(x,y+vsp,jWall4))
{
vsp = -40;

}


if (place_meeting(x,y+vsp,jwall5))
{
hsp = 0;

}