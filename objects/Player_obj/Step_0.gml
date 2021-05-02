/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 43780EEB
/// @DnDComment : Keyboard Controls
/// @DnDArgument : "script" "AWSDcontrols"
/// @DnDSaveInfo : "script" "AWSDcontrols"
script_execute(AWSDcontrols);

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
/// @DnDVersion : 1
/// @DnDHash : 773C5669
/// @DnDComment : Gamepad Controls
/// @DnDArgument : "var" "gp_connected"
/// @DnDArgument : "var_temp" "1"
var gp_connected = gamepad_is_connected(0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01234301
/// @DnDArgument : "var" "gp_connected"
/// @DnDArgument : "value" "true"
if(gp_connected == true)
{
	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1.1
	/// @DnDHash : 18C6312B
	/// @DnDParent : 01234301
	/// @DnDArgument : "var" "gp_left_x"
	/// @DnDArgument : "var_temp" "1"
	var gp_left_x = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;

	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1.1
	/// @DnDHash : 0A740F2E
	/// @DnDParent : 01234301
	/// @DnDArgument : "var" "gp_left_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "axis" "gp_axislv"
	var gp_left_y = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislv) : 0;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39EC9C95
	/// @DnDParent : 01234301
	/// @DnDArgument : "var" "x_pad_temp"
	/// @DnDArgument : "value" "0"
	var x_pad_temp = 0;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 560B0878
	/// @DnDParent : 01234301
	/// @DnDArgument : "var" "y_pad_temp"
	/// @DnDArgument : "value" "0"
	var y_pad_temp = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 184F6192
	/// @DnDParent : 01234301
	/// @DnDArgument : "var" "gp_left_x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "-0.68"
	if(gp_left_x < -0.68)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38FBA3CB
		/// @DnDParent : 184F6192
		/// @DnDArgument : "expr" "-1*Spd"
		/// @DnDArgument : "var" "x_pad_temp"
		x_pad_temp = -1*Spd;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 76C10791
	/// @DnDParent : 01234301
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2BFBD598
		/// @DnDParent : 76C10791
		/// @DnDArgument : "var" "gp_left_x"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "0.68"
		if(gp_left_x > 0.68)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 59386D7B
			/// @DnDParent : 2BFBD598
			/// @DnDArgument : "expr" "1*Spd"
			/// @DnDArgument : "var" "x_pad_temp"
			x_pad_temp = 1*Spd;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E01BFB7
	/// @DnDParent : 01234301
	/// @DnDArgument : "var" "gp_left_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "-0.7"
	if(gp_left_y < -0.7)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5AAF482F
		/// @DnDParent : 7E01BFB7
		/// @DnDArgument : "expr" "-1*Spd"
		/// @DnDArgument : "var" "y_pad_temp"
		y_pad_temp = -1*Spd;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 09E5449B
	/// @DnDParent : 01234301
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10F4ACA7
		/// @DnDParent : 09E5449B
		/// @DnDArgument : "var" "gp_left_y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "0.7"
		if(gp_left_y > 0.7)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 211CBA4B
			/// @DnDParent : 10F4ACA7
			/// @DnDArgument : "expr" "1*Spd"
			/// @DnDArgument : "var" "y_pad_temp"
			y_pad_temp = 1*Spd;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 539EAE0B
	/// @DnDParent : 01234301
	/// @DnDArgument : "expr" "(0<=(x+x_pad_temp))&&((x+x_pad_temp)<=room_width)"
	if((0<=(x+x_pad_temp))&&((x+x_pad_temp)<=room_width))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 32F33B8D
		/// @DnDParent : 539EAE0B
		/// @DnDArgument : "expr" "x_pad_temp"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += x_pad_temp;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 07D7534A
	/// @DnDParent : 01234301
	/// @DnDArgument : "expr" "(0<=(y+y_pad_temp))&&((y+y_pad_temp)<=room_height)"
	if((0<=(y+y_pad_temp))&&((y+y_pad_temp)<=room_height))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62C2C4CF
		/// @DnDParent : 07D7534A
		/// @DnDArgument : "expr" "y_pad_temp"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y"
		y += y_pad_temp;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 383480AA
/// @DnDArgument : "expr" "instance_exists(Boss)"
if(instance_exists(Boss))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46F54538
	/// @DnDParent : 383480AA
	/// @DnDArgument : "var" "boss"
	/// @DnDArgument : "value" "instance_nearest(x , y, Boss)"
	var boss = instance_nearest(x , y, Boss);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A260BC7
	/// @DnDParent : 383480AA
	/// @DnDArgument : "var" "facing"
	/// @DnDArgument : "value" "point_direction(x,y, boss.x, boss.y)"
	var facing = point_direction(x,y, boss.x, boss.y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19A6F21E
	/// @DnDParent : 383480AA
	/// @DnDArgument : "var" "dying"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	if(!(dying == true))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 58BC4190
		/// @DnDParent : 19A6F21E
		/// @DnDArgument : "expr" "((facing >= 338 && facing < 360)||(facing >= 0 && facing < 23))"
		if(((facing >= 338 && facing < 360)||(facing >= 0 && facing < 23)))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 35A8F2E2
			/// @DnDParent : 58BC4190
			/// @DnDArgument : "spriteind" "PlayerStance6"
			/// @DnDSaveInfo : "spriteind" "PlayerStance6"
			sprite_index = PlayerStance6;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 09AB8BC6
			/// @DnDParent : 58BC4190
			image_xscale = 1;
			image_yscale = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 50B9C10E
		/// @DnDParent : 19A6F21E
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 20E33C79
			/// @DnDParent : 50B9C10E
			/// @DnDArgument : "expr" "(facing >= 23 && facing < 68)"
			if((facing >= 23 && facing < 68))
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 47D5CCEB
				/// @DnDParent : 20E33C79
				/// @DnDArgument : "spriteind" "PlayerStance7"
				/// @DnDSaveInfo : "spriteind" "PlayerStance7"
				sprite_index = PlayerStance7;
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Instances.Sprite_Scale
				/// @DnDVersion : 1
				/// @DnDHash : 750AD887
				/// @DnDParent : 20E33C79
				/// @DnDArgument : "xscale" "-1"
				image_xscale = -1;
				image_yscale = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 683B49DA
			/// @DnDParent : 50B9C10E
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 4C4F5AB1
				/// @DnDParent : 683B49DA
				/// @DnDArgument : "expr" "(facing >= 68 && facing <113)"
				if((facing >= 68 && facing <113))
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 1B83A3FA
					/// @DnDParent : 4C4F5AB1
					/// @DnDArgument : "spriteind" "playerStance8"
					/// @DnDSaveInfo : "spriteind" "playerStance8"
					sprite_index = playerStance8;
					image_index = 0;
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Scale
					/// @DnDVersion : 1
					/// @DnDHash : 3C05090B
					/// @DnDParent : 4C4F5AB1
					image_xscale = 1;
					image_yscale = 1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 3C620908
				/// @DnDParent : 683B49DA
				else
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 26C345D2
					/// @DnDParent : 3C620908
					/// @DnDArgument : "expr" "(facing >= 113 && facing < 158)"
					if((facing >= 113 && facing < 158))
					{
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 51F9063B
						/// @DnDParent : 26C345D2
						/// @DnDArgument : "spriteind" "PlayerStance7"
						/// @DnDSaveInfo : "spriteind" "PlayerStance7"
						sprite_index = PlayerStance7;
						image_index = 0;
					
						/// @DnDAction : YoYo Games.Instances.Sprite_Scale
						/// @DnDVersion : 1
						/// @DnDHash : 21068F82
						/// @DnDParent : 26C345D2
						image_xscale = 1;
						image_yscale = 1;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 04ACAD2E
					/// @DnDParent : 3C620908
					else
					{
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 0C08451E
						/// @DnDParent : 04ACAD2E
						/// @DnDArgument : "expr" "(facing >= 158 && facing < 203)"
						if((facing >= 158 && facing < 203))
						{
							/// @DnDAction : YoYo Games.Instances.Set_Sprite
							/// @DnDVersion : 1
							/// @DnDHash : 760452BC
							/// @DnDParent : 0C08451E
							/// @DnDArgument : "spriteind" "PlayerStance6"
							/// @DnDSaveInfo : "spriteind" "PlayerStance6"
							sprite_index = PlayerStance6;
							image_index = 0;
						
							/// @DnDAction : YoYo Games.Instances.Sprite_Scale
							/// @DnDVersion : 1
							/// @DnDHash : 0844FFFE
							/// @DnDParent : 0C08451E
							/// @DnDArgument : "xscale" "-1"
							image_xscale = -1;
							image_yscale = 1;
						}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 7BC6D610
						/// @DnDParent : 04ACAD2E
						else
						{
							/// @DnDAction : YoYo Games.Common.If_Expression
							/// @DnDVersion : 1
							/// @DnDHash : 5F93E050
							/// @DnDParent : 7BC6D610
							/// @DnDArgument : "expr" "(facing >= 203 && facing < 248)"
							if((facing >= 203 && facing < 248))
							{
								/// @DnDAction : YoYo Games.Instances.Set_Sprite
								/// @DnDVersion : 1
								/// @DnDHash : 0BBA1B24
								/// @DnDParent : 5F93E050
								/// @DnDArgument : "spriteind" "playerStance3"
								/// @DnDSaveInfo : "spriteind" "playerStance3"
								sprite_index = playerStance3;
								image_index = 0;
							
								/// @DnDAction : YoYo Games.Instances.Sprite_Scale
								/// @DnDVersion : 1
								/// @DnDHash : 3E339EDE
								/// @DnDParent : 5F93E050
								/// @DnDArgument : "xscale" "-1"
								image_xscale = -1;
								image_yscale = 1;
							}
						
							/// @DnDAction : YoYo Games.Common.Else
							/// @DnDVersion : 1
							/// @DnDHash : 2AF83F46
							/// @DnDParent : 7BC6D610
							else
							{
								/// @DnDAction : YoYo Games.Common.If_Expression
								/// @DnDVersion : 1
								/// @DnDHash : 76EED8FE
								/// @DnDParent : 2AF83F46
								/// @DnDArgument : "expr" "(facing >= 248 && facing < 293)"
								if((facing >= 248 && facing < 293))
								{
									/// @DnDAction : YoYo Games.Instances.Set_Sprite
									/// @DnDVersion : 1
									/// @DnDHash : 5842E639
									/// @DnDParent : 76EED8FE
									/// @DnDArgument : "spriteind" "playerStance2"
									/// @DnDSaveInfo : "spriteind" "playerStance2"
									sprite_index = playerStance2;
									image_index = 0;
								
									/// @DnDAction : YoYo Games.Instances.Sprite_Scale
									/// @DnDVersion : 1
									/// @DnDHash : 2DEEB279
									/// @DnDParent : 76EED8FE
									image_xscale = 1;
									image_yscale = 1;
								}
							
								/// @DnDAction : YoYo Games.Common.Else
								/// @DnDVersion : 1
								/// @DnDHash : 0A3DCBF4
								/// @DnDParent : 2AF83F46
								else
								{
									/// @DnDAction : YoYo Games.Common.If_Expression
									/// @DnDVersion : 1
									/// @DnDHash : 3801F1DB
									/// @DnDParent : 0A3DCBF4
									/// @DnDArgument : "expr" "(facing >= 293 && facing <338)"
									if((facing >= 293 && facing <338))
									{
										/// @DnDAction : YoYo Games.Instances.Set_Sprite
										/// @DnDVersion : 1
										/// @DnDHash : 221EBFAB
										/// @DnDParent : 3801F1DB
										/// @DnDArgument : "spriteind" "playerStance3"
										/// @DnDSaveInfo : "spriteind" "playerStance3"
										sprite_index = playerStance3;
										image_index = 0;
									
										/// @DnDAction : YoYo Games.Instances.Sprite_Scale
										/// @DnDVersion : 1
										/// @DnDHash : 1A7E24C3
										/// @DnDParent : 3801F1DB
										image_xscale = 1;
										image_yscale = 1;
									}
								}
							}
						}
					}
				}
			}
		}
	}
}