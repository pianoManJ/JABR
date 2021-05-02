/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 35330EC9
randomize();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 11B524D0
/// @DnDArgument : "expr" "instance_exists(Player_obj)"
if(instance_exists(Player_obj))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DFAAC8D
	/// @DnDParent : 11B524D0
	/// @DnDArgument : "var" "player"
	/// @DnDArgument : "value" "instance_nearest(x,y,Player_obj)"
	var player = instance_nearest(x,y,Player_obj);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 256CC83B
	/// @DnDParent : 11B524D0
	/// @DnDArgument : "expr" "point_direction(x,y,player.x,player.y)"
	/// @DnDArgument : "var" "towards_player"
	towards_player = point_direction(x,y,player.x,player.y);
}

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 7D973032
/// @DnDInput : 2
/// @DnDArgument : "var" "attack_type"
/// @DnDArgument : "option" "1"
/// @DnDArgument : "option_1" "2"
attack_type = choose(1, 2);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4062E137
/// @DnDArgument : "expr" "attack_type"
var l4062E137_0 = attack_type;
switch(l4062E137_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 58854FE2
	/// @DnDParent : 4062E137
	/// @DnDArgument : "const" "1"
	case 1:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 18B08179
		/// @DnDParent : 58854FE2
		/// @DnDArgument : "script" "ProjectileShot"
		/// @DnDArgument : "arg" "towards_player"
		script_execute(ProjectileShot, towards_player);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 72A044B6
	/// @DnDParent : 4062E137
	/// @DnDArgument : "const" "2"
	case 2:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58CDDEC9
		/// @DnDParent : 72A044B6
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "consecutive_shots"
		consecutive_shots = 3;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 3EEF1BC1
		/// @DnDParent : 72A044B6
		/// @DnDArgument : "steps" "2"
		/// @DnDArgument : "alarm" "2"
		alarm_set(2, 2);
		break;
}