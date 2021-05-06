/// @description Insert description here
// You can write your code in this edito
if(mouse_x > x && mouse_x < x+256 && mouse_y > y && mouse_y < y+128){
if mouse_check_button_pressed(mb_left){
selected = 1
obj_createMenuControl.currentsprite = choice
}

}else{
if mouse_check_button_pressed(mb_left){
selected = 0 	
}	
}
if(selected = 1){
sprite_index = spr_menuWindowRed	
}else{
sprite_index = spr_menuWindow	
}