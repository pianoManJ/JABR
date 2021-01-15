/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58E23BC5
/// @DnDArgument : "var" "plasma_counter"
/// @DnDArgument : "op" "2"
if(plasma_counter > 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 46C271DA
	/// @DnDParent : 58E23BC5
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "tracker_projectile"
	/// @DnDSaveInfo : "objectid" "tracker_projectile"
	instance_create_layer(x + 0, y + 0, "Instances", tracker_projectile);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1BFA3A8E
	/// @DnDParent : 58E23BC5
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "plasma_counter"
	plasma_counter += -1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 62FCD49F
	/// @DnDParent : 58E23BC5
	/// @DnDArgument : "steps" "48"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 48);
}