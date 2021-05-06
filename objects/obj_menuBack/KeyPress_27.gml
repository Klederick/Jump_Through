/// @description Insert description here
// You can write your code in this editor
if(creator = 1 && browser = 0){
if(instance_exists(obj_menuCreate)){
with obj_menuCreate instance_destroy();
}
if(instance_exists(obj_menuBrowse)){
with obj_menuBrowse instance_destroy();	
}
instance_create_layer(x+27,y+73,"Text",obj_menuSelect)
instance_create_layer(x+19,y+117,"Text",obj_menuCreator)
instance_create_layer(x+75,y+170,"Text",obj_menuExit)
creator = 0	
}
if(creator = 0 && browser = 1){
if(instance_exists(obj_browseControl)){
with obj_browseControl instance_destroy()
with obj_browseWindow instance_destroy()
}
instance_create_layer(x+39,y+64,"Text",obj_menuBrowse)
instance_create_layer(x+45,y+128,"Text",obj_menuCreate)
creator = 1
browser = 0
}