/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 229F73DB
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "speed"
speed = 4;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 3EF3C3E5
/// @DnDArgument : "value" "0.5"
/// @DnDArgument : "instvar" "19"
gravity = 0.5;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 382D629E
/// @DnDArgument : "var" "instance_exists(Player_obj)"
/// @DnDArgument : "value" "true"
if(instance_exists(Player_obj) == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 097A4D9F
	/// @DnDParent : 382D629E
	/// @DnDArgument : "expr" "point_direction(x,y,Player_obj.x,Player_obj.y)"
	/// @DnDArgument : "var" "direction"
	direction = point_direction(x,y,Player_obj.x,Player_obj.y);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 29CDD041
/// @DnDArgument : "steps" "60*7"
alarm_set(0, 60*7);