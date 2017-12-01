/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2E1FBB41
/// @DnDArgument : "code" "$(13_10)if ( 0 >= hp)$(13_10){$(13_10)	with(instance_create_depth(x,y,1,oDead))$(13_10)	{$(13_10)	$(13_10)	}$(13_10)	instance_destroy();$(13_10)}"

if ( 0 >= hp)
{
	with(instance_create_depth(x,y,1,oDead))
	{
	
	}
	instance_destroy();
}