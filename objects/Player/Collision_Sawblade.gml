vspd = 0;
hspd = 0;
stop = true;

sprite_index = S_Wall;

if(flashpoint == false){
	alarm[0] = room_speed/3;
	flashpoint = true;
}

with(other){
	spd = 0;
	image_speed = 0;
}