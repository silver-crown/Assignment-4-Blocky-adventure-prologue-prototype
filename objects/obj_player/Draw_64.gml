/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 642286F5
/// @DnDArgument : "code" "	//Draw the hearts$(13_10)	var xoffset = 70;$(13_10)$(13_10)	// use a for loop$(13_10)	for (var i =0; i<hp; i++)$(13_10)	{$(13_10)		draw_sprite(sprite34, 0, 60+(xoffset*i), 30);$(13_10)	$(13_10)	}$(13_10)"
	//Draw the hearts
	var xoffset = 70;

	// use a for loop
	for (var i =0; i<hp; i++)
	{
		draw_sprite(sprite34, 0, 60+(xoffset*i), 30);
	
	}