show_debug_message("levels: "+string(array_length(levels)));
if (nolevels = 0 || array_length(levels) > 1) {

timer++;
if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
if(mutation > 0){
if(up = 1){
position--;	
}
mutation--;	
}
}
if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
if(mutation < array_length(levels)-1){
	if(down = 1){
 position++
}
	mutation++;
}
}
if(keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)) && timer > 20{
	obj_globalBalance.customlevelfilename = levels[mutation]
	obj_globalBalance.playtestload = false;
	obj_globalBalance.roomtogo = LevelBuilder
	instance_create_depth(0,0,-1000,obj_fadeout)
}
}