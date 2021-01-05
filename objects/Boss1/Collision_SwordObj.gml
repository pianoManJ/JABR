/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C70FDE0
/// @DnDArgument : "var" "SwordObj.can_swing"
/// @DnDArgument : "value" "false"
if(SwordObj.can_swing == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 379D3B77
	/// @DnDParent : 4C70FDE0
	/// @DnDArgument : "var" "is_vulnerable"
	/// @DnDArgument : "value" "true"
	if(is_vulnerable == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F6A58C7
		/// @DnDParent : 379D3B77
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hit_points"
		hit_points += -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 22C3AF15
		/// @DnDParent : 379D3B77
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "is_vulnerable"
		is_vulnerable = false;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 450D04BD
		/// @DnDParent : 379D3B77
		alarm_set(0, 30);
	}
}