/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 36F57C6C
/// @DnDArgument : "code" "instance_destroy(obj_player);$(13_10)audio_stop_all();$(13_10)audio_play_sound(soundTrueEnd,1,false);"
instance_destroy(obj_player);
audio_stop_all();
audio_play_sound(soundTrueEnd,1,false);