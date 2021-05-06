if (obj_globalBalance.customleveltested) {
	if (CheckPlayerExit(obj_grid.width, obj_grid.height, obj_grid.grid)) {
	creatorname = get_string("What is your name?", "Anonymous")
	levelname = get_string("What would you like to name this level?", "My Custom Level")
	SaveLevel(levelname, creatorname, obj_grid.width, obj_grid.height, obj_grid.grid)
	show_message_async("Level sucessfully saved.")
	
	obj_globalBalance.roomtogo = room_menu
	instance_create_depth(0,0,-1000,obj_fadeout)
	
} else {show_message_async("Error: A level needs to have a single Player and at least one Exit.")}
} else {show_message_async("Error: You need to Playtest your level before it can be saved.")}

