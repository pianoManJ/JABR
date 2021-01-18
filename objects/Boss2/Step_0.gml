/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 086A71D8
/// @DnDArgument : "var" "hit_points"
if(hit_points == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4C4D4C8E
	/// @DnDParent : 086A71D8
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4F1FEB0C
/// @DnDArgument : "expr" "path_position < 0.25"
if(path_position < 0.25)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 4CBCBD9D
	/// @DnDParent : 4F1FEB0C
	image_angle = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0C3A8878
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 65431F02
	/// @DnDParent : 0C3A8878
	/// @DnDArgument : "expr" "(path_position >= 0.25)&&(path_position<0.5)"
	if((path_position >= 0.25)&&(path_position<0.5))
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 0637C1B0
		/// @DnDParent : 65431F02
		/// @DnDArgument : "angle" "270"
		image_angle = 270;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6C6DBBB9
	/// @DnDParent : 0C3A8878
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 6DDF18E2
		/// @DnDParent : 6C6DBBB9
		/// @DnDArgument : "expr" "(path_position>=0.5)&&(path_position<0.75)"
		if((path_position>=0.5)&&(path_position<0.75))
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 03FD7261
			/// @DnDParent : 6DDF18E2
			/// @DnDArgument : "angle" "180"
			image_angle = 180;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3CA54473
		/// @DnDParent : 6C6DBBB9
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4CEA3C76
			/// @DnDParent : 3CA54473
			/// @DnDArgument : "var" "(path_position>=0.75)&&(path_position<=1)"
			if((path_position>=0.75)&&(path_position<=1) == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
				/// @DnDVersion : 1
				/// @DnDHash : 28E12992
				/// @DnDParent : 4CEA3C76
				/// @DnDArgument : "angle" "90"
				image_angle = 90;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 330FDECA
/// @DnDArgument : "expr" "boss_state"
var l330FDECA_0 = boss_state;
switch(l330FDECA_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7E331023
	/// @DnDParent : 330FDECA
	/// @DnDArgument : "const" ""Attack""
	case "Attack":
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 5194BA33
		/// @DnDParent : 7E331023
		event_user(0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1BE0D5F6
		/// @DnDParent : 7E331023
		/// @DnDArgument : "expr" ""Rest""
		/// @DnDArgument : "var" "boss_state"
		boss_state = "Rest";
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 373E02E5
		/// @DnDParent : 7E331023
		/// @DnDArgument : "steps" "60*5"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 60*5);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3C3088DE
	/// @DnDParent : 330FDECA
	/// @DnDArgument : "const" ""Rest""
	case "Rest":
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 2D358006
		/// @DnDParent : 3C3088DE
		/// @DnDArgument : "event" "1"
		event_user(1);
		break;
}