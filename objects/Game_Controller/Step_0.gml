/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
/// @DnDVersion : 1
/// @DnDHash : 63A332AA
/// @DnDArgument : "var" "gp_check"
/// @DnDArgument : "var_temp" "1"
var gp_check = gamepad_is_connected(0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01321A9A
/// @DnDArgument : "var" "gp_check"
/// @DnDArgument : "value" "true"
if(gp_check == true)
{
	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1.1
	/// @DnDHash : 1888A81C
	/// @DnDParent : 01321A9A
	/// @DnDArgument : "var" "gp_lx"
	gp_lx = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;

	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1.1
	/// @DnDHash : 73DC6723
	/// @DnDParent : 01321A9A
	/// @DnDArgument : "var" "gp_ly"
	/// @DnDArgument : "axis" "gp_axislv"
	gp_ly = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislv) : 0;

	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 54F0FD04
	/// @DnDParent : 01321A9A
	/// @DnDArgument : "btn" "gp_start"
	var l54F0FD04_0 = 0;
	var l54F0FD04_1 = gp_start;
	if(gamepad_is_connected(l54F0FD04_0) && gamepad_button_check_pressed(l54F0FD04_0, l54F0FD04_1))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E2192EC
		/// @DnDParent : 54F0FD04
		/// @DnDArgument : "var" "advance_Room"
		/// @DnDArgument : "value" "true"
		if(advance_Room == true)
		{
			/// @DnDAction : YoYo Games.Rooms.Next_Room
			/// @DnDVersion : 1
			/// @DnDHash : 15405933
			/// @DnDParent : 3E2192EC
			room_goto_next();
		}
	}
}