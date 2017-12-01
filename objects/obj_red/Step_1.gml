/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2E1FBB41
/// @DnDArgument : "code" "if ( hp <= 0)$(13_10){$(13_10)	$(13_10)	with(instance_create_depth(x,y,1,oDead))$(13_10)	{$(13_10)	$(13_10)	}$(13_10)	instance_destroy();$(13_10)}"
if ( hp <= 0)
{
	
	with(instance_create_depth(x,y,1,oDead))
	{
	
	}
	instance_destroy();
}