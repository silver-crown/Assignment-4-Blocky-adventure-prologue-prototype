/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0AC9F750
/// @DnDArgument : "code" "//Get Player Input$(13_10)if (hascontrol = true)$(13_10){$(13_10)key_left = keyboard_check(ord("A")) && place_free(x-collisionSpeed,y);$(13_10)key_right = keyboard_check(ord("D")) && place_free(x+collisionSpeed,y);$(13_10)key_jump = keyboard_check_pressed(vk_space);$(13_10)key_maxJump = keyboard_check(vk_space);$(13_10)key_attack = keyboard_check(ord("P"));$(13_10)key_smallSpin = keyboard_check(ord("O"));$(13_10)$(13_10)$(13_10)spin = 0;$(13_10)wallx = 0;$(13_10)wally = 0;$(13_10)$(13_10)$(13_10)//Calculate Movement$(13_10)var move = key_right - key_left;$(13_10)$(13_10)hsp = move * walksp;$(13_10)$(13_10)vsp = vsp + grv;$(13_10)$(13_10)if (place_meeting(x,y+1,oWall)) && (key_jump)$(13_10){$(13_10)    vsp = -30;$(13_10)}$(13_10)$(13_10)if (vsp < 0) && (!key_maxJump) vsp = max(vsp,0)$(13_10)$(13_10)$(13_10)}$(13_10)else {$(13_10)key_left = 0;$(13_10)key_right = 0;$(13_10)key_jump = 0;$(13_10)key_maxJump = 0;$(13_10)key_attack = 0;$(13_10)key_smallSpin = 0;$(13_10)hsp = 0;$(13_10)vsp = 0;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)	$(13_10)//Horizontal collision$(13_10)if (place_meeting(x+hsp,y,oWall))$(13_10){$(13_10)    while (!place_meeting(x+sign(hsp),y,oWall))$(13_10)    {$(13_10)	x = x + sign(hsp);$(13_10) }$(13_10) hsp = 0;$(13_10) wallx = 1;$(13_10)}$(13_10)x = x + hsp;$(13_10)$(13_10)$(13_10)$(13_10)//Vertical Collision$(13_10)if (place_meeting(x,y+vsp,oWall))$(13_10){$(13_10)    while (!place_meeting(x,y+sign(vsp),oWall))$(13_10) {$(13_10)     y = y + sign(vsp);$(13_10) }$(13_10) vsp = 0;$(13_10) wally = 1;$(13_10)}$(13_10)y = y + vsp;$(13_10)$(13_10)$(13_10)//movement friction$(13_10)$(13_10)if (hsp > 0)$(13_10)   {$(13_10)   friction=17;$(13_10)   }$(13_10)else$(13_10)   {$(13_10)   friction=0;$(13_10)   }$(13_10)$(13_10)$(13_10)//spinning $(13_10)$(13_10)if (!place_meeting(x,y,oWall))$(13_10){$(13_10)	$(13_10)if (key_attack)$(13_10){ $(13_10)		image_angle += 30;$(13_10)		spin = 0;$(13_10)		}$(13_10)		else $(13_10)		{$(13_10)			image_angle = 0;$(13_10)		}$(13_10)		}$(13_10)		if (place_meeting(x,y,oWall))$(13_10)		{$(13_10)			image_angle = 0;$(13_10)	$(13_10)		}$(13_10)$(13_10)		//spawning hitbox$(13_10)$(13_10)		if  (key_attack) && (vsp>0)$(13_10)		{$(13_10)		vsp = 0$(13_10)		hsp = 0$(13_10)$(13_10)$(13_10)$(13_10)			with(instance_create_depth(x,y,1,obj_hitbox))$(13_10)			{$(13_10)		$(13_10)				with(instance_place(x,y,obj_red))  $(13_10)				{$(13_10)					if (hit == 0)$(13_10)							 {$(13_10)					flash = 3;$(13_10)					hp --;$(13_10)							 $(13_10)								 hit = 1;$(13_10)								 	direction = other;$(13_10)$(13_10)	hsp = 30;$(13_10)		for (i = 7; i < hsp; hsp --)$(13_10)	{}$(13_10)				}$(13_10)		hit = 0;$(13_10)			}$(13_10)			$(13_10)			$(13_10)				with(instance_place(x,y,obj_blue))  $(13_10)				{$(13_10)					if (hit == 0)$(13_10)							 {$(13_10)					flash = 3;$(13_10)					hp --;$(13_10)							 $(13_10)								 hit = 1;$(13_10)								 	direction = other;$(13_10)$(13_10)	hsp = 30;$(13_10)		for (i = 7; i < hsp; hsp --)$(13_10)	{}$(13_10)				}$(13_10)		hit = 0;$(13_10)			}$(13_10)		}$(13_10)		}$(13_10)		$(13_10)		$(13_10)		$(13_10)		$(13_10)		$(13_10)		//spawning spin$(13_10)		firingDelay = firingDelay - 1;$(13_10)		if (key_attack) && (firingDelay < 0) && (wally < 1) && (wallx < 1)$(13_10)$(13_10)		{$(13_10)			firingDelay = 7;$(13_10)			with (instance_create_layer(x,y,"Spin",oSpin))$(13_10)			{$(13_10)			speed = obj_player$(13_10)			direction = other.image_angle;$(13_10)			}$(13_10)		}$(13_10)$(13_10)//Enemy Collision$(13_10)				$(13_10)$(13_10)		if (place_meeting(x,y,obj_red))	|| (place_meeting(x,y,obj_blue))		$(13_10)		{$(13_10)					if (sprite_index = sprite1)$(13_10)					{$(13_10)				hp --;$(13_10)				sprite_index = spr_playeri;$(13_10)				flash = 3;$(13_10)				direction = other.hitfrom;$(13_10)		hsp = lengthdir_x(3,direction);$(13_10)		vsp = lengthdir_y(3,direction);$(13_10)						 	$(13_10)								alarm_set(0,50);$(13_10)		$(13_10)			}$(13_10)					$(13_10)				$(13_10)	$(13_10)		}$(13_10)		//Water Collision$(13_10)$(13_10)		if (place_meeting(x,y,obj_water2)) || (place_meeting(x,y,obj_water3))$(13_10)		{	$(13_10)		 walksp = 4;$(13_10)		 hsp = 2;$(13_10)		 grv = 2;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			hsp = hsp;$(13_10)			grv = 3.5;$(13_10)			walksp = 8;$(13_10)		}$(13_10)$(13_10)$(13_10)//slowfall$(13_10)$(13_10)if (place_meeting(x,y,obj_slowfall))$(13_10)$(13_10)with (other)$(13_10){$(13_10)vsp = 3;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
//Get Player Input
if (hascontrol = true)
{
key_left = keyboard_check(ord("A")) && place_free(x-collisionSpeed,y);
key_right = keyboard_check(ord("D")) && place_free(x+collisionSpeed,y);
key_jump = keyboard_check_pressed(vk_space);
key_maxJump = keyboard_check(vk_space);
key_attack = keyboard_check(ord("P"));
key_smallSpin = keyboard_check(ord("O"));


spin = 0;
wallx = 0;
wally = 0;


//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
    vsp = -30;
}

if (vsp < 0) && (!key_maxJump) vsp = max(vsp,0)


}
else {
key_left = 0;
key_right = 0;
key_jump = 0;
key_maxJump = 0;
key_attack = 0;
key_smallSpin = 0;
hsp = 0;
vsp = 0;
}



	
//Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
    while (!place_meeting(x+sign(hsp),y,oWall))
    {
	x = x + sign(hsp);
 }
 hsp = 0;
 wallx = 1;
}
x = x + hsp;



//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
    while (!place_meeting(x,y+sign(vsp),oWall))
 {
     y = y + sign(vsp);
 }
 vsp = 0;
 wally = 1;
}
y = y + vsp;


//movement friction

if (hsp > 0)
   {
   friction=17;
   }
else
   {
   friction=0;
   }


//spinning 

if (!place_meeting(x,y,oWall))
{
	
if (key_attack)
{ 
		image_angle += 30;
		spin = 0;
		}
		else 
		{
			image_angle = 0;
		}
		}
		if (place_meeting(x,y,oWall))
		{
			image_angle = 0;
	
		}

		//spawning hitbox

		if  (key_attack) && (vsp>0)
		{
		vsp = 0
		hsp = 0



			with(instance_create_depth(x,y,1,obj_hitbox))
			{
		
				with(instance_place(x,y,obj_red))  
				{
					if (hit == 0)
							 {
					flash = 3;
					hp --;
							 
								 hit = 1;
								 	direction = other;

	hsp = 30;
		for (i = 7; i < hsp; hsp --)
	{}
				}
		hit = 0;
			}
			
			
				with(instance_place(x,y,obj_blue))  
				{
					if (hit == 0)
							 {
					flash = 3;
					hp --;
							 
								 hit = 1;
								 	direction = other;

	hsp = 30;
		for (i = 7; i < hsp; hsp --)
	{}
				}
		hit = 0;
			}
		}
		}
		
		
		
		
		
		//spawning spin
		firingDelay = firingDelay - 1;
		if (key_attack) && (firingDelay < 0) && (wally < 1) && (wallx < 1)

		{
			firingDelay = 7;
			with (instance_create_layer(x,y,"Spin",oSpin))
			{
			speed = obj_player
			direction = other.image_angle;
			}
		}

//Enemy Collision
				

		if (place_meeting(x,y,obj_red))	|| (place_meeting(x,y,obj_blue))		
		{
					if (sprite_index = sprite1)
					{
				hp --;
				sprite_index = spr_playeri;
				flash = 3;
				direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction);
						 	
								alarm_set(0,50);
		
			}
					
				
	
		}
		//Water Collision

		if (place_meeting(x,y,obj_water2)) || (place_meeting(x,y,obj_water3))
		{	
		 walksp = 4;
		 hsp = 2;
		 grv = 2;
		}
		else
		{
			hsp = hsp;
			grv = 3.5;
			walksp = 8;
		}


//slowfall

if (place_meeting(x,y,obj_slowfall))

with (other)
{
vsp = 3;
}