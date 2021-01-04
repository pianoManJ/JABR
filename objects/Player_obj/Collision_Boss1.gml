/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 539C1161
/// @DnDArgument : "var" "is_vulnerable"
/// @DnDArgument : "value" "true"
if(is_vulnerable == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B444F75
	/// @DnDParent : 539C1161
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "playerHealth"
	playerHealth += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3109C226
	/// @DnDParent : 539C1161
	/// @DnDArgument : "var" "playerHealth"
	if(playerHealth == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6F821EDB
		/// @DnDParent : 3109C226
		instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C12441E
	/// @DnDParent : 539C1161
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "is_vulnerable"
	is_vulnerable = false;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 18B0CCDD
	/// @DnDApplyTo : {Health}
	/// @DnDParent : 539C1161
	with(Health) {
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 13EB973A
		/// @DnDParent : 18B0CCDD
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "11"
		image_index += 1;
	}

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 74C847B9
	/// @DnDParent : 539C1161
	/// @DnDArgument : "msg" "playerHealth"
	show_debug_message(string(playerHealth));

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5C7DB91F
	/// @DnDParent : 539C1161
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);
}