if (obj_globalBalance.playtestload) {
obj_globalBalance.roomtogo = room_LevelCreate
} else {obj_globalBalance.roomtogo = room_menu; obj_globalBalance.customlevelsession = false;}
instance_create_depth(0,0,-1000,obj_fadeout);
obj_globalBalance.deaths = 0
if instance_exists(obj_gravityChanger){
obj_gravityChanger.flipped = false	
}