/// @description Insert description here
// You can write your code in this editor
if select = 1{
if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
if(height < 30){
	if(obj_width.width < 30){
	for(i = 0; i<obj_width.width+1; i++) {
		obj_grid.grid[i, height+1] = 0
	}
	}else{
	if(obj_width.width = 30){
		for(i = 0; i<obj_width.width; i++) {
		obj_grid.grid[i, height+1] = 0
	}	
		
	}
		
	}
height++	
}
	
}
if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
if(height > 0){
height--	
}

}
}
if(mouse_x >= 8 && mouse_x <= 256 && mouse_y >= 68 && mouse_y <= 128){
if(mouse_check_button_pressed(mb_left)){
select = 1	
}
}else{
if(mouse_check_button_pressed(mb_left)){
select = 0	
}	
}