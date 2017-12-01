/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 45455853
/// @DnDArgument : "code" "instance_destroy(obj_player);$(13_10)audio_stop_all();$(13_10)audio_play_sound(soundExplosion,1,false);$(13_10)"
instance_destroy(obj_player);
audio_stop_all();
audio_play_sound(soundExplosion,1,false);