/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 28867211
/// @DnDArgument : "expr" "Player_obj.x"
/// @DnDArgument : "var" "x"
x = Player_obj.x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53E6256F
/// @DnDArgument : "expr" "Player_obj.y"
/// @DnDArgument : "var" "y"
y = Player_obj.y;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1B3221D3
/// @DnDArgument : "expr" "instance_exists(Boss1)"
if(instance_exists(Boss1))
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 6C9FB56B
	/// @DnDComment : //points sword in direction of enemy.
	/// @DnDParent : 1B3221D3
	/// @DnDArgument : "angle" "point_direction(x,y, Boss1.x, Boss1.y)-90"
	image_angle = point_direction(x,y, Boss1.x, Boss1.y)-90;
}