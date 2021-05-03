/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12B19A58
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "room_first"
if(room == room_first)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0CF53137
	/// @DnDParent : 12B19A58
	room_goto_next();
}