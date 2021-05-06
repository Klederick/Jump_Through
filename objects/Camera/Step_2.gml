#macro view view_camera[0]

camera_set_view_size(view, ideal_width, ideal_height);
	
if(instance_exists(Player)){
	var x_ = clamp(Player.x - ideal_width/2, 0, room_width - ideal_width);
	var y_ = clamp(Player.y - ideal_height/2, 0, room_height - ideal_height);
	
	var cur_x = camera_get_view_x(view);
	var cur_y = camera_get_view_y(view);
	
	var cur_spd = 0.25;
	
	camera_set_view_pos(view, lerp(cur_x, x_, cur_spd), lerp(cur_y, y_, cur_spd));
}
