if(updown == true){
	y += spd*dir;
	
	if(y < min_pos || y > max_pos){
		dir *= -1;
	}
}else{
	x += spd*dir;
	
	if(x < min_pos || x > max_pos){
		dir *= -1;
	}
}


