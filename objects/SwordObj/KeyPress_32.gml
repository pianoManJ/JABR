/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7AA3C170
/// @DnDArgument : "var" "can_swing"
/// @DnDArgument : "value" "true"
if(can_swing == true)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2283F6BE
	/// @DnDParent : 7AA3C170
	/// @DnDArgument : "soundid" "swipe"
	/// @DnDSaveInfo : "soundid" "swipe"
	audio_play_sound(swipe, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0B1B8106
	/// @DnDParent : 7AA3C170
	/// @DnDArgument : "spriteind" "sword_swipe"
	/// @DnDSaveInfo : "spriteind" "sword_swipe"
	sprite_index = sword_swipe;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12B66F7E
	/// @DnDParent : 7AA3C170
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "can_swing"
	can_swing = false;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 22158A8C
	/// @DnDParent : 7AA3C170
	/// @DnDArgument : "steps" "10"
	alarm_set(0, 10);

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 0B588204
	/// @DnDParent : 7AA3C170
	/// @DnDArgument : "msg" ""Swing!!!""
	show_debug_message(string("Swing!!!"));
}