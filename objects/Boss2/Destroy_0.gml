/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0CCACDF8
/// @DnDApplyTo : {Game_Controller}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "bosses_defeated"
with(Game_Controller) {
bosses_defeated += 1;

}

/// @DnDAction : YoYo Games.Rooms.Next_Room
/// @DnDVersion : 1
/// @DnDHash : 285B9AFD
room_goto_next();