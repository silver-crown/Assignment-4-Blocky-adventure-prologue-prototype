/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 14336FAF
/// @DnDArgument : "code" "if (myTime > 0 )$(13_10){$(13_10)myTime=myTime-delta_time/1000000$(13_10)}$(13_10)else  { $(13_10)	myTime = 0;$(13_10)	$(13_10)		//game over$(13_10)	with (obj_player)$(13_10)	{$(13_10)	hp = 0;$(13_10)	}$(13_10)	$(13_10)	instance_destroy();$(13_10)	$(13_10)	}$(13_10)$(13_10)	$(13_10)	$(13_10)	$(13_10)showTime =ceil(myTime)$(13_10)"
if (myTime > 0 )
{
myTime=myTime-delta_time/1000000
}
else  { 
	myTime = 0;
	
		//game over
	with (obj_player)
	{
	hp = 0;
	}
	
	instance_destroy();
	
	}

	
	
	
showTime =ceil(myTime)