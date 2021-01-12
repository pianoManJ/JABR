/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4DAFFF14
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 30C473B9
/// @DnDArgument : "x" "100"
/// @DnDArgument : "y" "700"
/// @DnDArgument : "caption" ""Boss Health: ""
/// @DnDArgument : "text" "hit_points"
draw_text_transformed(100, 700, string("Boss Health: ") + string(hit_points), 1, 1, 0);