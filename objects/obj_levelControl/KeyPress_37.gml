/// @description Insert description here
// You can write your code in this editor
if(obj_LevelSelect.onlevel != 1 && obj_LevelSelect.onlevel != 22 && obj_LevelSelect.onlevel != 29 && obj_LevelSelect.onlevel != 36 && obj_LevelSelect.onlevel != 43 && obj_LevelSelect.onlevel != 50){
	
		obj_LevelSelect.onlevel -= 1
}else if(obj_LevelSelect.onlevel = 22 || obj_LevelSelect.onlevel = 29 || obj_LevelSelect.onlevel = 36 || obj_LevelSelect.onlevel = 43 || obj_LevelSelect.onlevel = 50){
	obj_LevelSelect.onlevel -= 15
	obj_levelControl.page -= 1
}else{
	
}