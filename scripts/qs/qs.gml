/// @desc QuickSave and QuickLoad

function qs(){  // QuickSave
	filename = "savedata.dat"
	if (LoadCheck(filename)) {file_delete(game_save_id + filename)}
	
	#region Save the current state of the game
	
	currentsave = ds_map_create()
	
	ds_map_add(currentsave, "Progress", obj_globalBalance.levelprogress)
	for (i=0; i<array_length(obj_globalBalance.leveltime); i++) {newlt = "LevelTime_"+string(i); ds_map_add(currentsave, newlt, obj_globalBalance.leveltime[i])}

	ds_map_secure_save(currentsave, filename)
	show_debug_message("Saved");
	show_debug_message(json_encode(currentsave));
	ds_map_destroy(currentsave)
	#endregion
}

function ql() {  // QuickLoad
	filename = "savedata.dat"
	show_debug_message("Attempting to load...")
	if (LoadCheck(filename) /*|| (CorruptionCheck(filename))*/) {defaults()} // File safety check
	
	#region Load the game state from file
	currentload = ds_map_secure_load(game_save_id + filename)
	loadsize = ds_map_size(currentload)-1
	obj_globalBalance.levelprogress = ds_map_find_value(currentload, "Progress")
	for (i=0; i<loadsize; i++) {newlt = "LevelTime_"+string(i); obj_globalBalance.leveltime[i] = ds_map_find_value(currentload, newlt)}
	show_debug_message("Loaded");
	show_debug_message(json_encode(currentload));
	ds_map_destroy(currentload)
	#endregion
}

function LoadCheck(svfile) {  // Check if save exists
	if file_exists(game_save_id + svfile) {show_debug_message("file exists.")} else {show_debug_message("file doesnt exist.")}
	if file_exists(game_save_id + svfile) {return false} else {return true}
}

function defaults() {  // Load defaults and create a new save
	// Load Defaults (for new players)
	obj_globalBalance.levelprogress = 0;
	obj_globalBalance.leveltime[0] = 0;
	// Create a new save
	qs();
}

/* function CorruptionCheck(svfile) {  // File corruption checking
	checkload = ds_map_secure_load(game_save_id + svfile)
	
	#region Check expected file size
	expectedsize = 3
	if (!(ds_map_size(checkload) == expectedsize)) {return true}
	#endregion
	#region Check expected file structure
	if (!(ds_map_exists(svfile, "Coins")) || !(ds_map_exists(svfile, "XP")) || !(ds_map_exists(svfile, "LVL"))) {return true}
	#endregion
	#region Check expected values
	if (!((ds_map_find_value(checkload, "Coins")) >= 0) || !((ds_map_find_value(checkload, "Coins")) <= 999999999)) {return true}
	if (!((ds_map_find_value(checkload, "XP")) >= 0) || !((ds_map_find_value(checkload, "XP")) <= 510300)) {return true}
	if (!((ds_map_find_value(checkload, "LVL")) >= 1) || !((ds_map_find_value(checkload, "LVL")) <= 99)) {return true}
	#endregion
	
	ds_map_destroy(checkload);
	show_debug_message("no corruption detected.")
	return false
} */