if(Player.y > y){
	if(Player.x > x-16 && Player.x < x+16){
		falling = true;
	}
}

if(falling == true){
	y += fallspd;
}