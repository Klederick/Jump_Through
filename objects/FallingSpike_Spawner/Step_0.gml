if(timer == false){
	with(instance_create_depth(x, y, -8, FallingSpike)){
		fallspd = other.fallspd;
	}
	timer = true;
	alarm[0] = room_speed*rate;
}