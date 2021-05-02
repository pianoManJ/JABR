/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 28867211
/// @DnDArgument : "expr" "Player_obj.x"
/// @DnDArgument : "var" "x"
x = Player_obj.x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53E6256F
/// @DnDArgument : "expr" "Player_obj.y"
/// @DnDArgument : "var" "y"
y = Player_obj.y;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1B3221D3
/// @DnDArgument : "expr" "instance_exists(Boss)"
if(instance_exists(Boss))
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 6C9FB56B
	/// @DnDComment : //points sword in direction of enemy.
	/// @DnDParent : 1B3221D3
	/// @DnDArgument : "angle" "point_direction(x,y, Boss.x, Boss.y)-90"
	image_angle = point_direction(x,y, Boss.x, Boss.y)-90;
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 2C94A91C
/// @DnDArgument : "btn" "gp_face1"
var l2C94A91C_0 = 0;
var l2C94A91C_1 = gp_face1;
if(gamepad_is_connected(l2C94A91C_0) && gamepad_button_check_pressed(l2C94A91C_0, l2C94A91C_1))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69362E55
	/// @DnDParent : 2C94A91C
	/// @DnDArgument : "var" "can_swing"
	/// @DnDArgument : "value" "true"
	if(can_swing == true)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 392A4950
		/// @DnDParent : 69362E55
		/// @DnDArgument : "spriteind" "sword_swipe"
		sprite_index = sword_swipe;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 610A571B
		/// @DnDParent : 69362E55
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "can_swing"
		can_swing = false;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 5BEBFA6A
		/// @DnDParent : 69362E55
		/// @DnDArgument : "steps" "10"
		alarm_set(0, 10);
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 3EFFA36E
		/// @DnDParent : 69362E55
		/// @DnDArgument : "msg" ""Swing!!!""
		show_debug_message(string("Swing!!!"));
	}
}