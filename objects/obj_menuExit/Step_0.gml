/// @description Insert description here
// You can write your code in this editor
if(image_alpha < 1){
image_alpha += 0.04
}
if(onme = 1){
if(red > 0){
red -= 255/30
}else{
red = 0
}
col = make_colour_rgb(255,red,red)
image_blend = col;
}else{
if(red < 255){
red += 255/10
}else{
red = 255	
}
col = make_colour_rgb(255,red,red)
image_blend = col;
}
