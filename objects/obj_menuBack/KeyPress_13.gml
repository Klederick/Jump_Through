/// @description Insert description here
// You can write your code in this editor
if(creator = 0 && browser = 0){
if(obj_menuSelect.onme = 1){
	obj_globalBalance.roomtogo = Room_LevelSelect
	instance_create_depth(0,0,-1000,obj_fadeout)
}else if(obj_menuCreator.onme = 1){
	if instance_exists(obj_menuCreator){
	with obj_menuCreator instance_destroy();	
	}
	if instance_exists(obj_menuExit){
	with obj_menuExit instance_destroy();	
	}
	if instance_exists(obj_menuSelect){
	with obj_menuSelect instance_destroy();	
	}
	instance_create_layer(x+39,y+64,"Text",obj_menuBrowse)
	instance_create_layer(x+45,y+128,"Text",obj_menuCreate)
	creator = 1
}else if(obj_menuExit.onme = 1){
	qs();
	game_end();
}
}else{
	if(browser = 0){
 if(obj_menuBrowse.onme = 1){
	//browse	 
	
	
	if instance_exists(obj_menuBrowse){
	with obj_menuBrowse instance_destroy();
	with obj_menuCreate instance_destroy();
	}
	instance_create_layer(x,y,"Text",obj_browseControl)
	browser = 1
	creator = 0
	
 }else{
	obj_globalBalance.roomtogo = room_LevelCreate
	instance_create_depth(0,0,-1000,obj_fadeout)
 }
	}else{
		
	}
}