/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 509EE7BF
/// @DnDArgument : "funcName" "AWSDcontrols"
function AWSDcontrols() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 794F468D
	/// @DnDParent : 509EE7BF
	/// @DnDArgument : "var" "x_temp"
	/// @DnDArgument : "value" "0"
	var x_temp = 0;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B25971B
	/// @DnDParent : 509EE7BF
	/// @DnDArgument : "var" "y_temp"
	/// @DnDArgument : "value" "0"
	var y_temp = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 73C8F79C
	/// @DnDParent : 509EE7BF
	/// @DnDArgument : "key" "ord("A")"
	var l73C8F79C_0;
	l73C8F79C_0 = keyboard_check(ord("A"));
	if (l73C8F79C_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 01348F63
		/// @DnDParent : 73C8F79C
		/// @DnDArgument : "expr" "Spd*-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x_temp"
		x_temp += Spd*-1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 260B98BD
	/// @DnDParent : 509EE7BF
	/// @DnDArgument : "key" "ord("D")"
	var l260B98BD_0;
	l260B98BD_0 = keyboard_check(ord("D"));
	if (l260B98BD_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38DC178D
		/// @DnDParent : 260B98BD
		/// @DnDArgument : "expr" "Spd"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x_temp"
		x_temp += Spd;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 73EC963B
	/// @DnDParent : 509EE7BF
	/// @DnDArgument : "key" "ord("W")"
	var l73EC963B_0;
	l73EC963B_0 = keyboard_check(ord("W"));
	if (l73EC963B_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 522B799D
		/// @DnDParent : 73EC963B
		/// @DnDArgument : "expr" "Spd*-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y_temp"
		y_temp += Spd*-1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 245F64E9
	/// @DnDParent : 509EE7BF
	/// @DnDArgument : "key" "ord("S")"
	var l245F64E9_0;
	l245F64E9_0 = keyboard_check(ord("S"));
	if (l245F64E9_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F7BE28F
		/// @DnDParent : 245F64E9
		/// @DnDArgument : "expr" "Spd"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y_temp"
		y_temp += Spd;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 587EB7DD
	/// @DnDParent : 509EE7BF
	/// @DnDArgument : "expr" "(0 <= (x+x_temp))&&((x+x_temp)<= room_width)"
	if((0 <= (x+x_temp))&&((x+x_temp)<= room_width))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4AED176F
		/// @DnDParent : 587EB7DD
		/// @DnDArgument : "expr" "x_temp"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += x_temp;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7AA50302
	/// @DnDParent : 509EE7BF
	/// @DnDArgument : "expr" "(0 <= (y+y_temp))&&((y+y_temp)<= room_height)"
	if((0 <= (y+y_temp))&&((y+y_temp)<= room_height))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2407FD46
		/// @DnDParent : 7AA50302
		/// @DnDArgument : "expr" "y_temp"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y"
		y += y_temp;
	}
}