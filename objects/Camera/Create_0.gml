ideal_width = 0;
ideal_height = 256;

window_scale = 2;

aspect_ratio = display_get_width()/display_get_height();

ideal_width = round(ideal_height*aspect_ratio);

if(ideal_width & 1){
	ideal_width++;	
}

window_set_size(ideal_width*window_scale, ideal_height*window_scale);
alarm[0] = 1;

surface_resize(application_surface, ideal_width*window_scale, ideal_height*window_scale);
display_set_gui_size(ideal_width*window_scale, ideal_height*window_scale);
