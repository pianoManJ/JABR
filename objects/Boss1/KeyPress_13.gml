/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7870FBD0
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newProjectile"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "enem_projectile"
/// @DnDSaveInfo : "objectid" "enem_projectile"
var newProjectile = instance_create_layer(x + 0, y + 0, "Instances", enem_projectile);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1F0B2945
/// @DnDArgument : "expr" "instance_exists(Player_obj)"
if(instance_exists(Player_obj))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 412C4390
	/// @DnDParent : 1F0B2945
	/// @DnDArgument : "var" "player"
	/// @DnDArgument : "value" "instance_nearest(x,y,Player_obj)"
	var player = instance_nearest(x,y,Player_obj);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4013CA30
	/// @DnDParent : 1F0B2945
	/// @DnDArgument : "expr" "point_direction(x,y,player.x, player.y)"
	/// @DnDArgument : "var" "newProjectile.direction"
	newProjectile.direction = point_direction(x,y,player.x, player.y);
}