/// @description Insert description here
// You can write your code in this editor
if(obj_LevelSelect.onlevel < 14){
	if(obj_globalBalance.levelprogress >= obj_LevelSelect.onlevel+6){
		obj_LevelSelect.onlevel += 7
	}
		
}else if(obj_LevelSelect.onlevel > 21 && obj_LevelSelect.onlevel < 36){
	if(obj_globalBalance.levelprogress >= obj_LevelSelect.onlevel+6){
		obj_LevelSelect.onlevel += 7
	}
}else if(obj_LevelSelect.onlevel > 42 && obj_LevelSelect.onlevel < 50){
		obj_LevelSelect.onlevel = 50
}