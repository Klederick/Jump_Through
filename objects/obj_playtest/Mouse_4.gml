obj_globalBalance.customleveltested = true;
obj_globalBalance.playtestload = true;
if (CheckPlayerExit(obj_grid.width, obj_grid.height, obj_grid.grid)) {
	SaveTemp(obj_grid.width, obj_grid.height, obj_grid.grid)
	obj_globalBalance.roomtogo = LevelBuilder; instance_create_depth(0,0,-1000,obj_fadeout);
} else { show_message_async("Error: A level needs to have a single Player and at least one Exit.")}
