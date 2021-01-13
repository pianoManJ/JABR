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
/// @DnDArgument : "var" "attack_type"
/// @DnDArgument : "option" "1"
attack_type = choose(1);

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
}