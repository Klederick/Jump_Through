key_left = false
key_right = true
key_jump = false
key_jump_held = false

var move = key_right - key_left

if(stop == false){
	hspd = move*walkspd;

	vspd = vspd + grv;

	if(key_jump){
		vspd = -jumpspd;
	}

	if(vspd < 0 && !key_jump_held){
		vspd = max(vspd, 0)
	}

	if(place_meeting(x + hspd, y, Wall)){
		while(!place_meeting(x + sign(hspd), y, Wall)){
			x += sign(hspd);
		}
		hspd = 0;	
	}
	x += round(hspd);
	
	if(place_meeting(x, y + vspd, Wall)){
		while(!place_meeting(x, y + sign(vspd), Wall)){
			y += sign(vspd);
		}
		vspd = 0;
	}
	y += round(vspd);
}

//Hacks
if(x > room_width + 16){
	instance_destroy()
}