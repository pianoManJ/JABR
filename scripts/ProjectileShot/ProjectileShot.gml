/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 763FCA99
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "ProjectileShot"
/// @DnDArgument : "arg" "proj_direction"
function ProjectileShot(proj_direction) 
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 08889C80
	/// @DnDParent : 763FCA99
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newProjectile"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "enem_projectile"
	/// @DnDSaveInfo : "objectid" "enem_projectile"
	var newProjectile = instance_create_layer(x + 0, y + 0, "Instances", enem_projectile);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E8EDD81
	/// @DnDParent : 763FCA99
	/// @DnDArgument : "expr" "proj_direction"
	/// @DnDArgument : "var" "newProjectile.direction"
	newProjectile.direction = proj_direction;
}