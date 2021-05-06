
draw_set_font(Data_Font);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);

if (room != LevelBuilder) {
draw_text(display_get_gui_width() - 32, display_get_gui_height() - (display_get_gui_height() - 32), "Level: "+string(level));
draw_text(display_get_gui_width() - 32, display_get_gui_height() - (display_get_gui_height() - 64), "Deaths: "+string(obj_globalBalance.deaths));
draw_text(display_get_gui_width() - 780, display_get_gui_height() - (display_get_gui_height() - 32), "Best: "+string(obj_globalBalance.leveltime[level-1])+"s");
draw_text(display_get_gui_width() - 780, display_get_gui_height() - (display_get_gui_height() - 64), "Time: "+string(seconds));
} else {
draw_text(display_get_gui_width() - 32, display_get_gui_height() - (display_get_gui_height() - 32), "Level: " + LoadLevel_Name("TEMPLEVEL"));
draw_text(display_get_gui_width() - 32, display_get_gui_height() - (display_get_gui_height() - 64), "Deaths: "+string(obj_globalBalance.deaths));
draw_text(display_get_gui_width() - 780, display_get_gui_height() - (display_get_gui_height() - 64), "Time: "+string(seconds));
}
draw_set_color(c_black)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
