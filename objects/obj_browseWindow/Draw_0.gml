/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_font(BrowseText)
draw_set_color(c_black)
draw_text(x+8,y+4,string(obj_browseControl.names[current]))
draw_set_halign(fa_right)
draw_set_color(c_gray)
draw_text(x+176,y+16,string(obj_browseControl.creator[current]))
draw_set_halign(fa_left)






draw_set_color(c_white)