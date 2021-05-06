for(i = 0; i < 30; i++){
for(a = 0; a < 30; a++){
grid[i,a] = 0	
}	
}
if (obj_globalBalance.customlevelsession) {
obj_width.width = LoadLevel_X("TEMPLEVEL")
obj_height.height = LoadLevel_Y("TEMPLEVEL")
grid = LoadLevel_DATA("TEMPLEVEL")
obj_globalBalance.customlevelsession = false;
file_delete("TEMPLEVEL")
} else {
width = 0
height = 0
for(i = 0; i < 30; i++){
for(a = 0; a < 30; a++){
grid[i,a] = 0	
}	
}
}
repeatx = 0
repeaty = 0
width = 0
height = 0