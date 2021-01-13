/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61C569FC
/// @DnDArgument : "var" "phase"
/// @DnDArgument : "value" ""Fire""
if(phase == "Fire")
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 61E75933
	/// @DnDParent : 61C569FC
	/// @DnDArgument : "yscale" "100"
	image_xscale = 1;
	image_yscale = 100;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 79424D74
	/// @DnDParent : 61C569FC
	/// @DnDArgument : "angle" "beam_direction"
	image_angle = beam_direction;
}