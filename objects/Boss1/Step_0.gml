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
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 55533A12
		/// @DnDInput : 2
		/// @DnDParent : 75F76C43
		/// @DnDArgument : "var" "attack_type"
		/// @DnDArgument : "option" "1"
		/// @DnDArgument : "option_1" "2"
		attack_type = choose(1, 2);
	
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 6B1B0ECA
		/// @DnDParent : 75F76C43
		/// @DnDArgument : "expr" "attack_type"
		var l6B1B0ECA_0 = attack_type;
		switch(l6B1B0ECA_0)
		{
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 68B26B59
			/// @DnDComment : Single Shot
			/// @DnDParent : 6B1B0ECA
			/// @DnDArgument : "const" "1"
			case 1:
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 658039D5
				/// @DnDParent : 68B26B59
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
				/// @DnDParent : 68B26B59
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
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 341596E2
			/// @DnDComment : 3 consecutive shots
			/// @DnDParent : 6B1B0ECA
			/// @DnDArgument : "const" "2"
			case 2:
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 58E1C275
				/// @DnDParent : 341596E2
				/// @DnDArgument : "expr" "3"
				/// @DnDArgument : "var" "consecutive_shots"
				consecutive_shots = 3;
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 1C08274B
				/// @DnDParent : 341596E2
				/// @DnDArgument : "steps" "10"
				/// @DnDArgument : "alarm" "2"
				alarm_set(2, 10);
				break;
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