/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C2CA33C
/// @DnDArgument : "code" "switch (mpos)$(13_10){$(13_10)	case 0: $(13_10)	{$(13_10)		room_goto(room5);$(13_10)		break;$(13_10)	}$(13_10)$(13_10)		case 1: game_end(); break;$(13_10)		default: break;$(13_10)$(13_10)}"
switch (mpos)
{
	case 0: 
	{
		room_goto(room5);
		break;
	}

		case 1: game_end(); break;
		default: break;

}