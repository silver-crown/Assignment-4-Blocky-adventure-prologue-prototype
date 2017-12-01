/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D70DA23
/// @DnDArgument : "code" "if (keyboard_check_pressed(vk_enter)) $(13_10){$(13_10)	//only increase page if page + 1 is less than the total number of entries$(13_10)	if (page+1 < array_length_1d(text)){$(13_10)	page += 1;$(13_10)	charCount = 0;$(13_10)	}$(13_10)	$(13_10)	else { $(13_10)		instance_destroy();$(13_10)		creator.alarm[1] = 1;$(13_10)	}$(13_10)}"
if (keyboard_check_pressed(vk_enter)) 
{
	//only increase page if page + 1 is less than the total number of entries
	if (page+1 < array_length_1d(text)){
	page += 1;
	charCount = 0;
	}
	
	else { 
		instance_destroy();
		creator.alarm[1] = 1;
	}
}