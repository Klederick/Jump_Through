/// @description Insert description here
// You can write your code in this editor
if instance_exists(Player){
 obj_globalBalance.roomtogo = Room_LevelSelect
 instance_create_depth(0,0,-1000,obj_fadeout)
}
obj_globalBalance.deaths = 0