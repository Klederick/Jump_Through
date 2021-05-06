/// @description Insert description here
// You can write your code in this editor
if(obj_LevelSelect.onlevel != 21 && obj_LevelSelect.onlevel != 7 && obj_LevelSelect.onlevel != 14 && obj_LevelSelect.onlevel != 28  && obj_LevelSelect.onlevel != 35 && obj_LevelSelect.onlevel != 42){
	if(obj_globalBalance.levelprogress+1 > obj_LevelSelect.onlevel){
		obj_LevelSelect.onlevel += 1
	}	
}else{
	obj_levelControl.page++
	obj_LevelSelect.onlevel += 15	
}