/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 219DE075
randomize();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 52337ADF
/// @DnDArgument : "expr" "instance_exists(Player_obj)"
if(instance_exists(Player_obj))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D75E7CC
	/// @DnDParent : 52337ADF
	/// @DnDArgument : "var" "player"
	/// @DnDArgument : "value" "instance_nearest(x,y,Player_obj)"
	var player = instance_nearest(x,y,Player_obj);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25178A59
	/// @DnDParent : 52337ADF
	/// @DnDArgument : "expr" "point_direction(x,y,player.x,player.y)"
	/// @DnDArgument : "var" "towards_player"
	towards_player = point_direction(x,y,player.x,player.y);
}

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 5E39B20F
/// @DnDInput : 3
/// @DnDArgument : "var" "attack_type"
/// @DnDArgument : "option" "1"
/// @DnDArgument : "option_1" "2"
/// @DnDArgument : "option_2" "3"
attack_type = choose(1, 2, 3);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 1325CCF3
/// @DnDArgument : "expr" "attack_type"
var l1325CCF3_0 = attack_type;
switch(l1325CCF3_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2E96DA34
	/// @DnDParent : 1325CCF3
	/// @DnDArgument : "const" "1"
	case 1:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0A29A817
		/// @DnDParent : 2E96DA34
		/// @DnDArgument : "script" "ProjectileShot"
		/// @DnDArgument : "arg" "towards_player"
		/// @DnDSaveInfo : "script" "ProjectileShot"
		script_execute(ProjectileShot, towards_player);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 115F0D6D
	/// @DnDParent : 1325CCF3
	/// @DnDArgument : "const" "2"
	case 2:
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3456FED4
		/// @DnDParent : 115F0D6D
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "tracker_projectile"
		/// @DnDSaveInfo : "objectid" "tracker_projectile"
		instance_create_layer(x + 0, y + 0, "Instances", tracker_projectile);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1D018AFE
	/// @DnDParent : 1325CCF3
	/// @DnDArgument : "const" "3"
	case 3:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 75277D35
		/// @DnDParent : 1D018AFE
		/// @DnDArgument : "script" "ProjectileShot"
		/// @DnDArgument : "arg" "towards_player-30"
		/// @DnDSaveInfo : "script" "ProjectileShot"
		script_execute(ProjectileShot, towards_player-30);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 515A52AA
		/// @DnDParent : 1D018AFE
		/// @DnDArgument : "script" "ProjectileShot"
		/// @DnDArgument : "arg" "towards_player"
		/// @DnDSaveInfo : "script" "ProjectileShot"
		script_execute(ProjectileShot, towards_player);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 18ECE193
		/// @DnDParent : 1D018AFE
		/// @DnDArgument : "script" "ProjectileShot"
		/// @DnDArgument : "arg" "towards_player+30"
		/// @DnDSaveInfo : "script" "ProjectileShot"
		script_execute(ProjectileShot, towards_player+30);
		break;
}