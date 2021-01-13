/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3DBC48E1
/// @DnDArgument : "expr" ""Wait""
/// @DnDArgument : "var" "phase"
phase = "Wait";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33CD7924
/// @DnDArgument : "expr" "Player_obj.x"
/// @DnDArgument : "var" "player_x"
player_x = Player_obj.x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 054BE646
/// @DnDArgument : "expr" "Player_obj.y"
/// @DnDArgument : "var" "player_y"
player_y = Player_obj.y;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4D0ACA90
/// @DnDArgument : "alarm" "1"
alarm_set(1, 30);