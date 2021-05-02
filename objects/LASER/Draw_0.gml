/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 49834DCC
/// @DnDArgument : "expr" "phase"
var l49834DCC_0 = phase;
switch(l49834DCC_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 26AE6DE7
	/// @DnDParent : 49834DCC
	/// @DnDArgument : "const" ""Aim""
	case "Aim":
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0CB013CC
		/// @DnDParent : 26AE6DE7
		/// @DnDArgument : "var" "instance_exists(Player_obj)"
		/// @DnDArgument : "value" "true"
		if(instance_exists(Player_obj) == true)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Line
			/// @DnDVersion : 1
			/// @DnDHash : 5AD106D2
			/// @DnDParent : 0CB013CC
			/// @DnDArgument : "x1_relative" "1"
			/// @DnDArgument : "y1_relative" "1"
			/// @DnDArgument : "x2" "Player_obj.x"
			/// @DnDArgument : "y2" "Player_obj.y"
			draw_line(x + 0, y + 0, Player_obj.x, Player_obj.y);
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2E3AFF6D
	/// @DnDParent : 49834DCC
	/// @DnDArgument : "const" ""Wait""
	case "Wait":
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 76648C32
		/// @DnDParent : 2E3AFF6D
		/// @DnDArgument : "x" "player_x"
		/// @DnDArgument : "y" "player_y"
		/// @DnDArgument : "sprite" "target"
		draw_sprite(target, 0, player_x, player_y);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 39DD3D3F
	/// @DnDParent : 49834DCC
	/// @DnDArgument : "const" ""Fire""
	case "Fire":
		/// @DnDAction : YoYo Games.Drawing.Draw_Self
		/// @DnDVersion : 1
		/// @DnDHash : 743A8490
		/// @DnDParent : 39DD3D3F
		draw_self();
		break;
}