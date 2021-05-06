/// @description Insert description here
// You can write your code in this editor
draw_self()
if(mouse_x > x && mouse_x < x+sprite_width && mouse_y > y && mouse_y < y+sprite_height){
if mouse_check_button(mb_left){
if obj_createMenuControl.currentsprite != 0{
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