/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4DAFFF14
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 14D70C4D
/// @DnDArgument : "x" "250"
/// @DnDArgument : "y" "700"
/// @DnDArgument : "xscale" "500*(hit_points/max_hp)"
/// @DnDArgument : "sprite" "health_spr"
/// @DnDSaveInfo : "sprite" "health_spr"
draw_sprite_ext(health_spr, 0, 250, 700, 500*(hit_points/max_hp), 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 394C9660
/// @DnDArgument : "x" "250"
/// @DnDArgument : "y" "700"
/// @DnDArgument : "sprite" "health_container"
/// @DnDSaveInfo : "sprite" "health_container"
draw_sprite(health_container, 0, 250, 700);