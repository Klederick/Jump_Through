/// @description Insert description here
// You can write your code in this editor

if instance_exists(Player){
 if (obj_globalBalance.playtestload) {
obj_globalBalance.roomtogo = room_LevelCreate
} else {obj_globalBalance.roomtogo = room_menu; obj_globalBalance.customlevelsession = false;}
 instance_deactivate_object(Player)
 instance_create_depth(0,0,-1000,obj_fadeout)
}
obj_globalBalance.deaths = 0