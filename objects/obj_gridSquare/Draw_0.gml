/// @description Insert description here
// You can write your code in this editor
draw_self()
if(mouse_x > x && mouse_x < x+sprite_width && mouse_y > y && mouse_y < y+sprite_height){
if mouse_check_button(mb_left){
	if(obj_globalBalance.customleveltested = true){
	obj_globalBalance.customleveltested = false;	
	}
if obj_createMenuControl.currentsprite != 0{
if (obj_createMenuControl.currentsprite = 9 && (obj_grid.grid[tilex,tiley] = o_Player || obj_grid.grid[tilex,tiley] = o_Exit)){
	if (CheckPlayerExit(obj_grid.width, obj_grid.height, obj_grid.grid)) {
} else { obj_saveexit.ContainsPlayer = false; obj_saveexit.ContainsExit = false}
}
drawsprite = obj_createMenuControl.currentsprite
draw = 1
obj_grid.grid[tilex,tiley] = obj_createMenuControl.currentsprite

}else{
draw = 0
obj_grid.grid[tilex,tiley] = 0
}
}}
if(draw = 1){
if(drawsprite = spr_gravchange){
draw_sprite_ext(drawsprite,0,x+16,y+16,0.5,0.5,0,c_white,1)		
}else{
draw_sprite(drawsprite,0,x+16,y+16)	
}}