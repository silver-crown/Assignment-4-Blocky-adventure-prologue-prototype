/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3739A3BE
/// @DnDArgument : "code" "$(13_10)draw_set_color(c_white);$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_top);$(13_10)draw_set_font(IntroEnd);$(13_10)draw_text(512,484,print);$(13_10)$(13_10)$(13_10)if (holdspace > 0)$(13_10){$(13_10)	draw_set_alpha(wave(0.2,0.8,1,0))$(13_10)	draw_text(150,10,"Hold Enter to skip");$(13_10)	draw_set_alpha(1);$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)draw_sprite_ext(sPixel,0,0,0,1024,768,0,c_black,a);$(13_10)$(13_10)$(13_10)$(13_10)"

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(IntroEnd);
draw_text(512,484,print);


if (holdspace > 0)
{
	draw_set_alpha(wave(0.2,0.8,1,0))
	draw_text(150,10,"Hold Enter to skip");
	draw_set_alpha(1);

}







draw_sprite_ext(sPixel,0,0,0,1024,768,0,c_black,a);