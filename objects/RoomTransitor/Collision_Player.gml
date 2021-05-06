obj_globalBalance.roomtogo = obj_globalBalance.level[level]
instance_create_depth(0,0,-1000,obj_fadeout);
obj_globalBalance.deaths = 0
if(Data.seconds < obj_globalBalance.leveltime[Data.level-1] || obj_globalBalance.leveltime[Data.level-1] = 0){
obj_globalBalance.leveltime[Data.level-1] = Data.seconds
}
if(Data.level-1 = obj_globalBalance.levelprogress){
	obj_globalBalance.levelprogress++
}
if instance_exists(obj_gravityChanger){
obj_gravityChanger.flipped = false	
}
qs();