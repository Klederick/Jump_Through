/// @description Insert description here
// You can write your code in this editor
if select = 1{
if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
if(width < 30){
width++	
}
	
}
if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
if(width > 0){
width--	
}

}
}
if(mouse_x >= 8 && mouse_x <= 256 && mouse_y >= 8 && mouse_y <= 60){
if(mouse_check_button_pressed(mb_left)){
select = 1	
}
}else{
if(mouse_check_button_pressed(mb_left)){
select = 0	
}	
}