/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 7639BB7B
randomize();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 71BF8DDC
/// @DnDArgument : "expr" "instance_exists(Player_obj)"
if(instance_exists(Player_obj))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5682F275
	/// @DnDParent : 71BF8DDC
	/// @DnDArgument : "var" "player"
	/// @DnDArgument : "value" "instance_nearest(x,y,Player_obj)"
	var player = instance_nearest(x,y,Player_obj);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 653C47A5
	/// @DnDParent : 71BF8DDC
	/// @DnDArgument : "expr" "point_direction(x,y,player.x,player.y)"
	/// @DnDArgument : "var" "towards_player"
	towards_player = point_direction(x,y,player.x,player.y);
}

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 7783EEE1
/// @DnDInput : 4
/// @DnDArgument : "var" "attack_type"
/// @DnDArgument : "option" "1"
/// @DnDArgument : "option_1" "2"
/// @DnDArgument : "option_2" "3"
/// @DnDArgument : "option_3" "4"
attack_type = choose(1, 2, 3, 4);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4B51E7D1
/// @DnDArgument : "expr" "attack_type"
var l4B51E7D1_0 = attack_type;
switch(l4B51E7D1_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 11D498B2
	/// @DnDParent : 4B51E7D1
	/// @DnDArgument : "const" "1"
	case 1:
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3C3F0773
		/// @DnDParent : 11D498B2
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "LASER"
		/// @DnDSaveInfo : "objectid" "LASER"
		instance_create_layer(x + 0, y + 0, "Instances", LASER);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0B74C501
	/// @DnDParent : 4B51E7D1
	/// @DnDArgument : "const" "2"
	case 2:
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0FBDF2EE
		/// @DnDParent : 0B74C501
		/// @DnDArgument : "var" "dir"
		/// @DnDArgument : "value" "0"
		var dir = 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7423CD28
		/// @DnDParent : 0B74C501
		/// @DnDArgument : "var" "instance_exists(Player_obj)"
		/// @DnDArgument : "value" "true"
		if(instance_exists(Player_obj) == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 41C6BD91
			/// @DnDParent : 7423CD28
			/// @DnDArgument : "expr" "point_direction(x,y,Player_obj.x,Player_obj.y)"
			/// @DnDArgument : "var" "dir"
			dir = point_direction(x,y,Player_obj.x,Player_obj.y);
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 10B307C6
		/// @DnDInput : 2
		/// @DnDParent : 0B74C501
		/// @DnDArgument : "script" "ProjectileShot"
		/// @DnDArgument : "arg" "(dir+30)"
		/// @DnDArgument : "arg_1" "6"
		/// @DnDSaveInfo : "script" "ProjectileShot"
		script_execute(ProjectileShot, (dir+30), 6);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5E507D02
		/// @DnDInput : 2
		/// @DnDParent : 0B74C501
		/// @DnDArgument : "script" "ProjectileShot"
		/// @DnDArgument : "arg" "(dir-30)"
		/// @DnDArgument : "arg_1" "6"
		/// @DnDSaveInfo : "script" "ProjectileShot"
		script_execute(ProjectileShot, (dir-30), 6);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1A6FB685
		/// @DnDParent : 0B74C501
		/// @DnDArgument : "script" "ProjectileShot"
		/// @DnDArgument : "arg" "dir"
		/// @DnDSaveInfo : "script" "ProjectileShot"
		script_execute(ProjectileShot, dir);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6B991297
	/// @DnDParent : 4B51E7D1
	/// @DnDArgument : "const" "3"
	case 3:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E9A8E35
		/// @DnDParent : 6B991297
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "plasma_counter"
		plasma_counter = 2;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 46BE645A
		/// @DnDParent : 6B991297
		/// @DnDArgument : "steps" "2"
		/// @DnDArgument : "alarm" "2"
		alarm_set(2, 2);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0FFE95C1
	/// @DnDParent : 4B51E7D1
	/// @DnDArgument : "const" "4"
	case 4:
		/// @DnDAction : YoYo Games.Paths.Start_Path
		/// @DnDVersion : 1.1
		/// @DnDHash : 76E8218D
		/// @DnDParent : 0FFE95C1
		/// @DnDArgument : "path" "Boss3_Path"
		/// @DnDArgument : "speed" "5"
		/// @DnDSaveInfo : "path" "Boss3_Path"
		path_start(Boss3_Path, 5, path_action_stop, false);
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7C770A55
		/// @DnDParent : 0FFE95C1
		/// @DnDArgument : "spriteind" "Boss3_spin"
		/// @DnDSaveInfo : "spriteind" "Boss3_spin"
		sprite_index = Boss3_spin;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 462A41A4
		/// @DnDParent : 0FFE95C1
		/// @DnDArgument : "expr" "60*11"
		/// @DnDArgument : "var" "rest_time"
		rest_time = 60*11;
		break;
}