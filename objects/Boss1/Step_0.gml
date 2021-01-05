/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 394AA2C8
/// @DnDArgument : "var" "hit_points"
if(hit_points == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 65CFCC0B
	/// @DnDParent : 394AA2C8
	instance_destroy();
}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5C93C362
/// @DnDArgument : "expr" "boss_state"
var l5C93C362_0 = boss_state;
switch(l5C93C362_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 75F76C43
	/// @DnDParent : 5C93C362
	/// @DnDArgument : "const" ""Attack""
	case "Attack":
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 658039D5
		/// @DnDParent : 75F76C43
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "newProjectile"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "enem_projectile"
		/// @DnDSaveInfo : "objectid" "enem_projectile"
		var newProjectile = instance_create_layer(x + 0, y + 0, "Instances", enem_projectile);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 16CD0E1F
		/// @DnDParent : 75F76C43
		/// @DnDArgument : "expr" "instance_exists(Player_obj)"
		if(instance_exists(Player_obj))
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 778FEB6D
			/// @DnDParent : 16CD0E1F
			/// @DnDArgument : "var" "player"
			/// @DnDArgument : "value" "instance_nearest(x,y,Player_obj)"
			var player = instance_nearest(x,y,Player_obj);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A146831
			/// @DnDParent : 16CD0E1F
			/// @DnDArgument : "expr" "point_direction(x,y,player.x, player.y)"
			/// @DnDArgument : "var" "newProjectile.direction"
			newProjectile.direction = point_direction(x,y,player.x, player.y);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F91D7D8
		/// @DnDParent : 75F76C43
		/// @DnDArgument : "expr" ""Rest""
		/// @DnDArgument : "var" "boss_state"
		boss_state = "Rest";
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 04CB5E38
		/// @DnDParent : 75F76C43
		/// @DnDArgument : "steps" "60*5"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 60*5);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4FD20859
	/// @DnDParent : 5C93C362
	/// @DnDArgument : "const" ""Rest""
	case "Rest":
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 402BABF7
		/// @DnDParent : 4FD20859
		/// @DnDArgument : "msg" ""Rest""
		show_debug_message(string("Rest"));
		break;
}