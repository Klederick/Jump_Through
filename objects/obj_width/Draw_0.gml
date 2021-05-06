/// @description Insert description here
// You can write your code in this editor
draw_set_font(CreateFont)
if(select = 1){
draw_set_color(c_gray)
draw_rectangle(8,8,280,60,false)	
}
draw_set_color(c_white)
sirka = "Width:"+string(width)
draw_text(16,16,sirka)
