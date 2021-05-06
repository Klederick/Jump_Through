/// @description PLAYER GRAVITY

if(Player.stop == false){
	if (gflip){with (Player){ // g flipped
	hspd = move*walkspd;
	vspd = vspd - grv;
	if(key_jump){vspd = +jumpspd;}
	if(vspd > 0 && !key_jump_held){vspd = min(vspd, 0)}
	}
	
	} else {with (Player){  // g default
	hspd = move*walkspd;
	vspd = vspd + grv;
	if(key_jump){vspd = -jumpspd;}
	if(vspd < 0 && !key_jump_held){vspd = max(vspd, 0)}
	}
	}
	
	with (Player) {
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
	}}
	
with (Player) {y += round(vspd);}
}