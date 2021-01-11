/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A6DF729
/// @DnDArgument : "var" "instance_exists(Player_obj)"
/// @DnDArgument : "value" "true"
if(instance_exists(Player_obj) == true)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 69EBF354
	/// @DnDParent : 6A6DF729
	/// @DnDArgument : "value" "point_direction(x,y,Player_obj.x, Player_obj.y)"
	/// @DnDArgument : "instvar" "20"
	gravity_direction = point_direction(x,y,Player_obj.x, Player_obj.y);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 32F50C2E
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "13"
if(speed > 13)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 41394095
	/// @DnDParent : 32F50C2E
	/// @DnDArgument : "value" "8"
	/// @DnDArgument : "instvar" "3"
	speed = 8;
}