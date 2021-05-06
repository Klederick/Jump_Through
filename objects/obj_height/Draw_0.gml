/// @description Insert description here
// You can write your code in this editor
draw_set_font(CreateFont)
if(select = 1){
draw_set_color(c_gray)
draw_rectangle(8,68,280,128,false)	
}
draw_set_color(c_white)
vyska = "Height:"+string(height)
draw_text(16,76,vyska)
