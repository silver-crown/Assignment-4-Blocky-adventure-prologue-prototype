/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5F31E94F
/// @DnDArgument : "code" "if (place_meeting(x,y,obj_player)) || (place_meeting(x,y,obj_red)) || (place_meeting(x,y,obj_triton))$(13_10){$(13_10)with(instance_create_depth(x,y,1,obj_break))$(13_10)	{$(13_10)		$(13_10)		direction = other.hitfrom;$(13_10)		hsp = lengthdir_x(30,direction);$(13_10)		vsp = lengthdir_y(3,direction);$(13_10)	}$(13_10)	audio_play_sound(rockBreak,2,false);$(13_10)	instance_destroy();$(13_10)}$(13_10)"
if (place_meeting(x,y,obj_player)) || (place_meeting(x,y,obj_red)) || (place_meeting(x,y,obj_triton))
{
with(instance_create_depth(x,y,1,obj_break))
	{
		
		direction = other.hitfrom;
		hsp = lengthdir_x(30,direction);
		vsp = lengthdir_y(3,direction);
	}
	audio_play_sound(rockBreak,2,false);
	instance_destroy();
}