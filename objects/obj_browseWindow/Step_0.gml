/// @description Insert description here
// You can write your code in this editor
current = obj_browseControl.position+pos
if(obj_browseControl.mutation = current){
selected = 1;	
}else{
selected = 0;	
}
if(selected = 1){
if(pos = 0){
obj_browseControl.up = 1	
obj_browseControl.down = 0
}
if(pos = 2){
obj_browseControl.down = 1	
obj_browseControl.up = 0
}
if(pos = 1){
obj_browseControl.down = 0
obj_browseControl.up = 0
}
sprite_index = spr_menuBrowserSelected
	
}else{
sprite_index = spr_menuBrowser	
}