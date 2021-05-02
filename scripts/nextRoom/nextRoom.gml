/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 799BBC66
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "nextRoom"
function nextRoom() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 668FD6C5
	/// @DnDParent : 799BBC66
	/// @DnDArgument : "var" "advance_Room"
	/// @DnDArgument : "value" "true"
	if(advance_Room == true)
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 62876944
		/// @DnDParent : 668FD6C5
		room_goto_next();
	}
}