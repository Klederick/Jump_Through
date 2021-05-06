function SaveLevel(lname, lcreator, lx, ly, ldata) {
	i = 1; while(file_exists(global.customleveldirectory + "CustomLevel_" + string(i))) {i++}
	ini_open(global.customleveldirectory + "CustomLevel_" + string(i))
	ini_write_string("Info", "LevelName", lname); ini_write_string("Info", "LevelCreator", lcreator)
	ini_write_real("Config", "Width", lx); ini_write_real("Config", "Height", ly)
	for (ix=0;ix<lx;ix++) {for (iy=0;iy<ly;iy++) {ini_write_string("Block_" + string(ix), "Data_" + string(iy), ldata[ix,iy])}}
	for (jx=lx;jx<30;jx++) {for (jy=ly;jy<30;jy++) {ini_write_string("Block_" + string(jx), "Data_" + string(jy), "0")}}
	ini_close()
}

function SaveTemp(lx, ly, ldata) {
	if (file_exists(global.customleveldirectory + "TEMPLEVEL")) {file_delete(global.customleveldirectory + "TEMPLEVEL")}
	ini_open(global.customleveldirectory + "TEMPLEVEL")
	ini_write_real("Config", "Width", lx); ini_write_real("Config", "Height", ly)
	for (ix=0;ix<lx;ix++) {for (iy=0;iy<ly;iy++) {ini_write_string("Block_" + string(ix), "Data_" + string(iy), ldata[ix,iy])}}
	for (jx=lx;jx<30;jx++) {for (jy=ly;jy<30;jy++) {ini_write_string("Block_" + string(jx), "Data_" + string(jy), "0")}}
	ini_close()
}

function CheckPlayerExit(lx, ly, ldata) {obj_saveexit.PlayerCount = 0;
	for (ix=0;ix<lx;ix++) {for (iy=0;iy<ly;iy++) {if (sprite_get_name(ldata[ix,iy]) == "S_Player") {obj_saveexit.ContainsPlayer = true; obj_saveexit.PlayerCount++} else if (sprite_get_name(ldata[ix,iy]) == "S_Exit") {obj_saveexit.ContainsExit = true;} else {}}}
	if (obj_saveexit.ContainsPlayer && obj_saveexit.ContainsExit && obj_saveexit.PlayerCount == 1) {return true} else {return false}
}

function TestLevel(lx, ly, ldata) {
	room_width = lx*32
	room_height = ly*32
	CreateBorder(lx, ly)
	
	#region Asset Definitons
	o_Wall = "S_Wall"
	o_FallingSpike = "S_FallingSpike"
	o_Spike = "S_Spike"
	o_Spike90 = "S_Spike90"
	o_Spike180 = "S_Spike180"
	o_Spike270 = "S_Spike270"
	o_Exit = "S_Exit"
	o_GravChanger = "spr_gravchange"
	o_Player = "S_Player"
	#endregion
	
	for (ix=0;ix<lx;ix++) {for (iy=0;iy<ly;iy++) {
	switch (string(sprite_get_name(ldata[ix,iy]))) {
		case "0": break;
		case o_Wall: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", Wall)} else {instance_create_layer(ix*32, iy*32, "Instances", Wall)} break;
		case o_FallingSpike: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", FallingSpike_Spawner)} else {instance_create_layer(ix*32, iy*32, "Instances", FallingSpike_Spawner)} break;
		case o_Spike: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", Spike)} else {instance_create_layer(ix*32, iy*32, "Instances", Spike)} break;
		case o_Spike90: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", Spike90)} else {instance_create_layer(ix*32, iy*32, "Instances", Spike90)} break;
		case o_Spike180: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", Spike180)} else {instance_create_layer(ix*32, iy*32, "Instances", Spike180)} break;
		case o_Spike270: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", Spike270)} else {instance_create_layer(ix*32, iy*32, "Instances", Spike270)} break;
		case o_Exit: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", RoomTransitorCustom)} else {instance_create_layer(ix*32, iy*32, "Instances", RoomTransitorCustom)} break;
		case o_GravChanger: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", obj_gravityChanger)} else {instance_create_layer(ix*32, iy*32, "Instances", obj_gravityChanger)} break;
		case o_Player: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", Player)} else {instance_create_layer(ix*32, iy*32, "Instances", Player)} break;
		default: break;}}}
	instance_create_layer(0, 0, "Instances", Data)
	if (lx <= 10 && ly <= 10) {instance_destroy(Camera)
		view_enabled = true;
		view_camera[0] = camera_create_view(-(0.4*room_width), -16, room_height*1.78125, room_height)
		view_visible[0] = true
		} else {}
	
}

function BuildLevel(lx, ly, ldata) {
	room_width = lx*32
	room_height = ly*32
	CreateBorder(lx, ly)
	
	#region Asset Definitons
	o_Wall = "S_Wall"
	o_FallingSpike = "S_FallingSpike"
	o_Spike = "S_Spike"
	o_Spike90 = "S_Spike90"
	o_Spike180 = "S_Spike180"
	o_Spike270 = "S_Spike270"
	o_Exit = "S_Exit"
	o_GravChanger = "spr_gravchange"
	o_Player = "S_Player"
	#endregion
	
	for (ix=0;ix<lx;ix++) {for (iy=0;iy<ly;iy++) {
	switch (string(sprite_get_name(ldata[ix,iy]))) {
		case "0": break;
		case o_Wall: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", Wall)} else {instance_create_layer(ix*32, iy*32, "Instances", Wall)} break;
		case o_FallingSpike: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", FallingSpike_Spawner)} else {instance_create_layer(ix*32, iy*32, "Instances", FallingSpike_Spawner)} break;
		case o_Spike: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", Spike)} else {instance_create_layer(ix*32, iy*32, "Instances", Spike)} break;
		case o_Spike90: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", Spike90)} else {instance_create_layer(ix*32, iy*32, "Instances", Spike90)} break;
		case o_Spike180: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", Spike180)} else {instance_create_layer(ix*32, iy*32, "Instances", Spike180)} break;
		case o_Spike270: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", Spike270)} else {instance_create_layer(ix*32, iy*32, "Instances", Spike270)} break;
		case o_Exit: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", RoomTransitorCustom)} else {instance_create_layer(ix*32, iy*32, "Instances", RoomTransitorCustom)} break;
		case o_GravChanger: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", obj_gravityChanger)} else {instance_create_layer(ix*32, iy*32, "Instances", obj_gravityChanger)} break;
		case o_Player: if (/*ix == 0*/true) {instance_create_layer((ix*32)+16, iy*32, "Instances", Player)} else {instance_create_layer(ix*32, iy*32, "Instances", Player)} break;
		default: break;}}}
	instance_create_layer(0, 0, "Instances", Data)
	if (lx <= 10 && ly <= 10) {instance_destroy(Camera)
		view_enabled = true;
		view_camera[0] = camera_create_view(-(0.4*room_width), -16, room_height*1.78125, room_height)
		view_visible[0] = true
		} else {}
}

function CreateBorder(lx, ly) {
	for (ix=0;ix<lx;ix++) {for (iy=0;iy<ly;iy++) {
	if (ix == 0) {instance_create_layer(-((ix*32)+16), (iy*32)+0, "Instances", Wall)}
	if (ix == lx-1) {instance_create_layer(((ix+1)*32)+16, (iy*32)+0, "Instances", Wall)}
	if (iy == 0) {instance_create_layer((ix*32)+16, -((iy*32)+32), "Instances", Wall)}
	if (iy == ly-1) {instance_create_layer((ix*32)+16, ((iy+1)*32)+0, "Instances", Wall)}
	}}
}

#region Loading
function LoadLevel_Name(filename) {ini_open(global.customleveldirectory + filename); lname = ini_read_string("Info", "LevelName", "NA"); ini_close(); return lname;}

function LoadLevel_Creator(filename) {ini_open(global.customleveldirectory + filename); lcreator = ini_read_string("Info", "LevelCreator", "NA"); ini_close(); return lcreator;}

function LoadLevel_X(filename) {ini_open(global.customleveldirectory + filename); lx = ini_read_real("Config", "Width", 0); ini_close(); return lx;}

function LoadLevel_Y(filename) {ini_open(global.customleveldirectory + filename); ly = ini_read_real("Config", "Height", 0); ini_close(); return ly;}

function LoadLevel_DATA(filename) {
ini_open(global.customleveldirectory + filename)
lx = ini_read_real("Config", "Width", 0); ly = ini_read_real("Config", "Height", 0)
for (ix=0;ix<lx;ix++) {for (iy=0;iy<ly;iy++) {ldata[ix,iy] = ini_read_string("Block_" + string(ix), "Data_" + string(iy), "0")}}
for (jx=lx;jx<30;jx++) {for (jy=ly;jy<30;jy++) {ldata[jx,jy] = "0"}}
ini_close(); return ldata
}
#endregion

function SeekLevels() {
	if (file_exists(global.customleveldirectory + "TEMPLEVEL")) {file_delete(global.customleveldirectory + "TEMPLEVEL")}
	files = ds_list_create();
	file = file_find_first(global.customleveldirectory + "*", fa_directory)
	array[0] = "0";
	while (file != "") {
	ds_list_add(files, file)
	file = file_find_next();
	}
	for (i=0;i<ds_list_size(files);i++) {
		array[i] = ds_list_find_value(files, i)
	}
	return array
}
function SeekAnyLevel(){
		if (file_exists(global.customleveldirectory + "TEMPLEVEL")) {file_delete(global.customleveldirectory + "TEMPLEVEL")}
	files = ds_list_create();
	file = file_find_first(global.customleveldirectory + "*", fa_directory)
	while (file != "") {
	ds_list_add(files, file)
	file = file_find_next();
	}
	return ds_list_size(files);
}