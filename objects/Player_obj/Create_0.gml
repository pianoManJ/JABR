/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 432A0B92
/// @DnDArgument : "msg" "Spd"
show_debug_message(string(Spd));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 51573DE3
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "SwordObj"
instance_create_layer(x + 0, y + 0, "Instances", SwordObj);