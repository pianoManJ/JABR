/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1CB73D18
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "Script5"
function Script5() 
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 118FF460
	/// @DnDParent : 1CB73D18
	/// @DnDArgument : "color" "$FFFF7F07"
	draw_set_colour($FFFF7F07 & $ffffff);
	var l118FF460_0=($FFFF7F07 >> 24);
	draw_set_alpha(l118FF460_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Line
	/// @DnDVersion : 1
	/// @DnDHash : 4A89195C
	/// @DnDParent : 1CB73D18
	/// @DnDArgument : "x1" "bbox_left"
	/// @DnDArgument : "y1" "bbox_top"
	/// @DnDArgument : "x2" "bbox_left"
	/// @DnDArgument : "y2" "bbox_bottom"
	draw_line(bbox_left, bbox_top, bbox_left, bbox_bottom);

	/// @DnDAction : YoYo Games.Drawing.Draw_Line
	/// @DnDVersion : 1
	/// @DnDHash : 4364315E
	/// @DnDParent : 1CB73D18
	/// @DnDArgument : "x1" "bbox_left"
	/// @DnDArgument : "y1" "bbox_bottom"
	/// @DnDArgument : "x2" "bbox_right"
	/// @DnDArgument : "y2" "bbox_bottom"
	draw_line(bbox_left, bbox_bottom, bbox_right, bbox_bottom);

	/// @DnDAction : YoYo Games.Drawing.Draw_Line
	/// @DnDVersion : 1
	/// @DnDHash : 1C1BD621
	/// @DnDParent : 1CB73D18
	/// @DnDArgument : "x1" "bbox_right"
	/// @DnDArgument : "y1" "bbox_bottom"
	/// @DnDArgument : "x2" "bbox_right"
	/// @DnDArgument : "y2" "bbox_top"
	draw_line(bbox_right, bbox_bottom, bbox_right, bbox_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Line
	/// @DnDVersion : 1
	/// @DnDHash : 3B899813
	/// @DnDParent : 1CB73D18
	/// @DnDArgument : "x1" "bbox_right"
	/// @DnDArgument : "y1" "bbox_top"
	/// @DnDArgument : "x2" "bbox_left"
	/// @DnDArgument : "y2" "bbox_top"
	draw_line(bbox_right, bbox_top, bbox_left, bbox_top);
}