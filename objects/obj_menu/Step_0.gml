/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3502034B
/// @DnDArgument : "code" "if (moving = true)$(13_10){$(13_10)var move = 0;$(13_10)move -= max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),0);$(13_10)move += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),0);$(13_10)$(13_10)if (move != 0)$(13_10){$(13_10)	mpos += move;$(13_10)	if (mpos < 0) mpos = array_length_1d(menu) -1;$(13_10)	if (mpos > array_length_1d(menu) - 1) mpos = 0;$(13_10)}$(13_10)$(13_10)var push;$(13_10)push = max(keyboard_check_released(vk_enter),keyboard_check_released(vk_shift),keyboard_check_released(vk_space));$(13_10)if (push = 1) scr_menu();$(13_10)}$(13_10)$(13_10)"
if (moving = true)
{
var move = 0;
move -= max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),0);
move += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),0);

if (move != 0)
{
	mpos += move;
	if (mpos < 0) mpos = array_length_1d(menu) -1;
	if (mpos > array_length_1d(menu) - 1) mpos = 0;
}

var push;
push = max(keyboard_check_released(vk_enter),keyboard_check_released(vk_shift),keyboard_check_released(vk_space));
if (push = 1) scr_menu();
}