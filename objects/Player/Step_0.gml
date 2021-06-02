key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_jump = mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up);
key_jump_held = mouse_check_button(mb_left) || keyboard_check(vk_space) || keyboard_check(vk_up);
move = key_right - key_left

if (!instance_exists(GravityController)) {instance_create_depth(0, 0, 0, GravityController)}

if (place_meeting(x, y, other)) {x++; y++;} 
if (place_meeting(x+32, y, other)) {x--; y++;}
if (place_meeting(x, y+32, other)) {x++; y--;}
if (place_meeting(x+32, y+32, other)) {x--; y--;}




/*
if(stop == false){
	if (GravityController.gflip){ // g flipped
	hspd = move*walkspd;
	vspd = vspd - grv;
	if(key_jump){vspd = +jumpspd;}
	if(vspd > 0 && !key_jump_held){vspd = min(vspd, 0)}
	
	
	} else {  // g default
	hspd = move*walkspd;
	vspd = vspd + grv;
	if(key_jump){vspd = -jumpspd;}
	if(vspd < 0 && !key_jump_held){vspd = max(vspd, 0)}
	}
	
	
y += round(vspd);
}

