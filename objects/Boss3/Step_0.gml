/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 32D06EAD
/// @DnDArgument : "var" "hit_points"
if(hit_points == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 208E4C78
	/// @DnDParent : 32D06EAD
	/// @DnDArgument : "expr" ""Rest""
	/// @DnDArgument : "var" "boss_state"
	boss_state = "Rest";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29605A39
	/// @DnDParent : 32D06EAD
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "is_vulnerable"
	is_vulnerable = false;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7C658298
	/// @DnDParent : 32D06EAD
	/// @DnDArgument : "expr" "alarm[3] < 1"
	if(alarm[3] < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2DDF19AF
		/// @DnDParent : 7C658298
		/// @DnDArgument : "spriteind" "explosion_spr"
		/// @DnDSaveInfo : "spriteind" "explosion_spr"
		sprite_index = explosion_spr;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 2486D777
		/// @DnDParent : 7C658298
		/// @DnDArgument : "steps" "180"
		/// @DnDArgument : "alarm" "3"
		alarm_set(3, 180);
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4A9C73E9
/// @DnDArgument : "expr" "path_index == -1 && hit_points != 0"
if(path_index == -1 && hit_points != 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 01F27581
	/// @DnDParent : 4A9C73E9
	/// @DnDArgument : "spriteind" "Boss3_sprite"
	/// @DnDSaveInfo : "spriteind" "Boss3_sprite"
	sprite_index = Boss3_sprite;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4AE02728
/// @DnDArgument : "expr" "boss_state"
var l4AE02728_0 = boss_state;
switch(l4AE02728_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3A9CF52E
	/// @DnDParent : 4AE02728
	/// @DnDArgument : "const" ""Attack""
	case "Attack":
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 39C50E17
		/// @DnDParent : 3A9CF52E
		event_user(0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40C630EF
		/// @DnDParent : 3A9CF52E
		/// @DnDArgument : "expr" ""Rest""
		/// @DnDArgument : "var" "boss_state"
		boss_state = "Rest";
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 5B621F42
		/// @DnDParent : 3A9CF52E
		/// @DnDArgument : "steps" "rest_time"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, rest_time);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 42D37E64
	/// @DnDParent : 4AE02728
	/// @DnDArgument : "const" ""Rest""
	case "Rest":
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 4D266E9A
		/// @DnDParent : 42D37E64
		/// @DnDArgument : "event" "1"
		event_user(1);
		break;
}