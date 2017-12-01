/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0AC9F750
/// @DnDArgument : "code" "//Get Player Input$(13_10)key_left = keyboard_check(ord("A"));$(13_10)key_right = keyboard_check(ord("D"));$(13_10)key_jump = keyboard_check_pressed(vk_space);$(13_10)key_maxJump = keyboard_check(vk_space);$(13_10)key_attack = keyboard_check(ord("P"));$(13_10)spin = 0;$(13_10)$(13_10)$(13_10)if (keyboard_check_released(ord("P")))$(13_10){$(13_10)instance_destroy();$(13_10)}$(13_10)//Calculate Movement$(13_10)var move = key_right - key_left;$(13_10)$(13_10)hsp = move * walksp;$(13_10)$(13_10)vsp = vsp + grv;$(13_10)$(13_10)//Horizontal Collision (in case a wall is hit while spinning)$(13_10)if (place_meeting(x+hsp,y,oWall))$(13_10){$(13_10)	$(13_10)    while (!place_meeting(x+sign(hsp),y,oWall))$(13_10) {$(13_10)     x = x + sign(hsp);$(13_10) }$(13_10) hsp = 0;$(13_10) $(13_10)}$(13_10)$(13_10)x = x + hsp;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)y = y + vsp;$(13_10)"
//Get Player Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_maxJump = keyboard_check(vk_space);
key_attack = keyboard_check(ord("P"));
spin = 0;


if (keyboard_check_released(ord("P")))
{
instance_destroy();
}
//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

//Horizontal Collision (in case a wall is hit while spinning)
if (place_meeting(x+hsp,y,oWall))
{
	
    while (!place_meeting(x+sign(hsp),y,oWall))
 {
     x = x + sign(hsp);
 }
 hsp = 0;
 
}

x = x + hsp;




y = y + vsp;