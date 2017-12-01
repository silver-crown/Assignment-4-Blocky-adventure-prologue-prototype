/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5D47284A
/// @DnDArgument : "code" "$(13_10)$(13_10)$(13_10)//draw textbox$(13_10)draw_sprite(spr_box, 0, x,y);$(13_10)$(13_10)//draw text$(13_10)draw_set_font(fnt_text);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);$(13_10)$(13_10)$(13_10)if (charCount < string_length(text[page])){$(13_10)	charCount +=1;$(13_10)}$(13_10)$(13_10)textPart = string_copy(text[page], 1, charCount);$(13_10)$(13_10)//draw the name$(13_10)draw_text(x+boxWidth/2,y+yBuffer+10,name);$(13_10)$(13_10)//draw part of the text$(13_10)draw_text_ext (x+xBuffer,y+stringHeight+yBuffer+15, textPart, stringHeight, boxWidth);$(13_10)"



//draw textbox
draw_sprite(spr_box, 0, x,y);

//draw text
draw_set_font(fnt_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


if (charCount < string_length(text[page])){
	charCount +=1;
}

textPart = string_copy(text[page], 1, charCount);

//draw the name
draw_text(x+boxWidth/2,y+yBuffer+10,name);

//draw part of the text
draw_text_ext (x+xBuffer,y+stringHeight+yBuffer+15, textPart, stringHeight, boxWidth);