/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 227B3093
/// @DnDArgument : "var" "hit_points"
/// @DnDArgument : "not" "1"
if(!(hit_points == 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5AF2877A
	/// @DnDParent : 227B3093
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "is_vulnerable"
	is_vulnerable = true;
}

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 344619DC
image_blend = $FFFFFFFF & $ffffff;
image_alpha = ($FFFFFFFF >> 24) / $ff;