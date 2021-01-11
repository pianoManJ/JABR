/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 6021DCAA
/// @DnDArgument : "expr" "room"
var l6021DCAA_0 = room;
switch(l6021DCAA_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3A41F543
	/// @DnDParent : 6021DCAA
	/// @DnDArgument : "const" "game_start"
	case game_start:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A94BFE1
		/// @DnDParent : 3A41F543
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "advance_Room"
		advance_Room = true;
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 2BC8420C
		/// @DnDParent : 3A41F543
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 48295917
		/// @DnDParent : 3A41F543
		/// @DnDArgument : "x" "513"
		/// @DnDArgument : "y" "384"
		/// @DnDArgument : "xscale" "1.5"
		/// @DnDArgument : "yscale" "1.5"
		/// @DnDArgument : "caption" ""Just Another Boss Rush ""
		draw_text_transformed(513, 384, string("Just Another Boss Rush ") + "", 1.5, 1.5, 0);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 57D5E137
	/// @DnDParent : 6021DCAA
	/// @DnDArgument : "const" "game_1"
	case game_1:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B97BEC1
		/// @DnDParent : 57D5E137
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "advance_Room"
		advance_Room = false;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 231F58CF
	/// @DnDParent : 6021DCAA
	/// @DnDArgument : "const" "game_2"
	case game_2:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 725E839B
		/// @DnDParent : 231F58CF
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "advance_Room"
		advance_Room = false;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 08D82A1C
	/// @DnDParent : 6021DCAA
	/// @DnDArgument : "const" "game_over"
	case game_over:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2540202C
		/// @DnDParent : 08D82A1C
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "advance_Room"
		advance_Room = false;
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 3CDF4181
		/// @DnDParent : 08D82A1C
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 74A5C825
		/// @DnDParent : 08D82A1C
		/// @DnDArgument : "x" "513"
		/// @DnDArgument : "y" "384"
		/// @DnDArgument : "caption" ""Game Over""
		draw_text_transformed(513, 384, string("Game Over") + "", 1, 1, 0);
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 0537C1B0
		/// @DnDParent : 08D82A1C
		/// @DnDArgument : "key" "vk_enter"
		var l0537C1B0_0;
		l0537C1B0_0 = keyboard_check_pressed(vk_enter);
		if (l0537C1B0_0)
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 7FE82DF1
			/// @DnDParent : 0537C1B0
			/// @DnDArgument : "room" "game_start"
			/// @DnDSaveInfo : "room" "game_start"
			room_goto(game_start);
		}
		break;
}