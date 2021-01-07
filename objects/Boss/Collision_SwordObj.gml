/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74832D1D
/// @DnDArgument : "var" "SwordObj.can_swing"
/// @DnDArgument : "value" "false"
if(SwordObj.can_swing == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F734FC9
	/// @DnDParent : 74832D1D
	/// @DnDArgument : "var" "is_vulnerable"
	/// @DnDArgument : "value" "true"
	if(is_vulnerable == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 48754137
		/// @DnDParent : 6F734FC9
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hit_points"
		hit_points += -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 56C08B25
		/// @DnDParent : 6F734FC9
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "is_vulnerable"
		is_vulnerable = false;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 6794E2A5
		/// @DnDParent : 6F734FC9
		alarm_set(0, 30);
	}
}