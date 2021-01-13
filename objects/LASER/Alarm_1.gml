/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 43C47F21
/// @DnDArgument : "expr" ""Fire""
/// @DnDArgument : "var" "phase"
phase = "Fire";

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 76469D87
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 60);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46E144F8
/// @DnDArgument : "expr" "point_direction(x,y,player_x,player_y)-90"
/// @DnDArgument : "var" "beam_direction"
beam_direction = point_direction(x,y,player_x,player_y)-90;