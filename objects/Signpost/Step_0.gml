/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F392AC7
/// @DnDArgument : "code" "//text upon touch$(13_10)//if i haven't already created a textbox, make one$(13_10)if (place_meeting(x,y,obj_player)) {$(13_10)if (keyboard_check_pressed(vk_enter)) $(13_10){$(13_10)	if (myTextbox == noone) {$(13_10)	myTextbox = instance_create_layer(x-300,y+100,"Text",obj_textbox);$(13_10)	myTextbox.text = myText;$(13_10)	myTextbox.creator = self;$(13_10)	myTextbox.name = myName;$(13_10)	}$(13_10)$(13_10)$(13_10)}$(13_10) 	} else {$(13_10)		if (myTextbox != noone) {$(13_10)		instance_destroy(myTextbox);$(13_10)		myTextbox = noone;$(13_10)		}$(13_10)	}$(13_10)		"
//text upon touch
//if i haven't already created a textbox, make one
if (place_meeting(x,y,obj_player)) {
if (keyboard_check_pressed(vk_enter)) 
{
	if (myTextbox == noone) {
	myTextbox = instance_create_layer(x-300,y+100,"Text",obj_textbox);
	myTextbox.text = myText;
	myTextbox.creator = self;
	myTextbox.name = myName;
	}


}
 	} else {
		if (myTextbox != noone) {
		instance_destroy(myTextbox);
		myTextbox = noone;
		}
	}