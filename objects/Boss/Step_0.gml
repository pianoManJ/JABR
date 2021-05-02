/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 63EBEC38
/// @DnDArgument : "var" "hit_points"
if(hit_points == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 394148D1
	/// @DnDParent : 63EBEC38
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "is_vulnerable"
	is_vulnerable = false;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6A287B4D
	/// @DnDParent : 63EBEC38
	/// @DnDArgument : "expr" "alarm[3] < 1"
	if(alarm[3] < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 676F9555
		/// @DnDParent : 6A287B4D
		/// @DnDArgument : "spriteind" "explosion_spr"
		/// @DnDSaveInfo : "spriteind" "explosion_spr"
		sprite_index = explosion_spr;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 18A59A46
		/// @DnDParent : 6A287B4D
		/// @DnDArgument : "steps" "180"
		/// @DnDArgument : "alarm" "3"
		alarm_set(3, 180);
	}
}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 7058639D
/// @DnDArgument : "expr" "boss_state"
var l7058639D_0 = boss_state;
switch(l7058639D_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6870C5C0
	/// @DnDParent : 7058639D
	/// @DnDArgument : "const" ""Attack""
	case "Attack":
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 2E9198A9
		/// @DnDParent : 6870C5C0
		event_user(0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 629E6861
		/// @DnDParent : 6870C5C0
		/// @DnDArgument : "expr" ""Rest""
		/// @DnDArgument : "var" "boss_state"
		boss_state = "Rest";
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 56B5707E
		/// @DnDParent : 6870C5C0
		/// @DnDArgument : "steps" "60*5"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 60*5);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 073C50CB
	/// @DnDParent : 7058639D
	/// @DnDArgument : "const" ""Rest""
	case "Rest":
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 03E97CF1
		/// @DnDParent : 073C50CB
		/// @DnDArgument : "event" "1"
		event_user(1);
		break;
}