/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D305105
/// @DnDArgument : "var" "consecutive_shots"
/// @DnDArgument : "op" "2"
if(consecutive_shots > 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 23D7489A
	/// @DnDParent : 3D305105
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newProjectile"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "enem_projectile"
	var newProjectile = instance_create_layer(x + 0, y + 0, "Instances", enem_projectile);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3BBD926A
	/// @DnDParent : 3D305105
	/// @DnDArgument : "expr" "instance_exists(Player_obj)"
	if(instance_exists(Player_obj))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36B5D2F3
		/// @DnDParent : 3BBD926A
		/// @DnDArgument : "var" "player"
		/// @DnDArgument : "value" "instance_nearest(x,y,Player_obj)"
		var player = instance_nearest(x,y,Player_obj);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3BF23370
		/// @DnDParent : 3BBD926A
		/// @DnDArgument : "expr" "point_direction(x,y,player.x, player.y)"
		/// @DnDArgument : "var" "newProjectile.direction"
		newProjectile.direction = point_direction(x,y,player.x, player.y);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C101475
	/// @DnDParent : 3D305105
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "consecutive_shots"
	consecutive_shots += -1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 30727179
	/// @DnDParent : 3D305105
	/// @DnDArgument : "steps" "40"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 40);
}