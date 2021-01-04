/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7707B73A
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "Take_Damage"
function Take_Damage() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34267CD0
	/// @DnDParent : 7707B73A
	/// @DnDArgument : "var" "is_vulnerable"
	/// @DnDArgument : "value" "true"
	if(is_vulnerable == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37626DB6
		/// @DnDParent : 34267CD0
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "playerHealth"
		playerHealth += -1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17B805E6
		/// @DnDParent : 34267CD0
		/// @DnDArgument : "var" "playerHealth"
		if(playerHealth == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3FFC3177
			/// @DnDParent : 17B805E6
			instance_destroy();
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63044639
		/// @DnDParent : 34267CD0
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "is_vulnerable"
		is_vulnerable = false;
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 0DE1D6B2
		/// @DnDApplyTo : {Health}
		/// @DnDParent : 34267CD0
		with(Health) {
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 5C4BDA1A
			/// @DnDParent : 0DE1D6B2
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "instvar" "11"
			image_index += 1;
		}
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 632C76F7
		/// @DnDParent : 34267CD0
		/// @DnDArgument : "msg" "playerHealth"
		show_debug_message(string(playerHealth));
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 397277BB
		/// @DnDParent : 34267CD0
		/// @DnDArgument : "steps" "60"
		alarm_set(0, 60);
	}
}