/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08209D3E
/// @DnDArgument : "code" "if (place_meeting(x,y,obj_player))$(13_10){$(13_10)with (obj_player)$(13_10){$(13_10)	if (hascontrol)$(13_10)	{$(13_10)		hascontrol = false;$(13_10)		SlideTransition(TRANS_MODE.GOTO,other.target);$(13_10)	}$(13_10)		hascontrol = true;$(13_10)}	$(13_10)$(13_10)}"
if (place_meeting(x,y,obj_player))
{
with (obj_player)
{
	if (hascontrol)
	{
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,other.target);
	}
		hascontrol = true;
}	

}