// [int] levelprogress
// [arr] leveltime
window_set_caption("Jump Through 1.1 - Press F4 for fullscreen - Press F12 to delete custom levels")
window_set_cursor(cr_none)
levelprogress = 21;
maxlevels = 21;
for(i=0; i<levelprogress; i++){
leveltime[i] = 0;
}
roomtogo = room_menu
count = 0
deaths = 0
lastroom = -1

global.customleveldirectory = working_directory + "CustomLevels\\"
customlevelsession = false;
customleveltested = false;
playtestload = false;
customlevelfilename = "";

//levels
level[0] = Initial
level[1] = Mug
level[2] = Tunnel
level[3] = Close_Enough
level[4] = Room10
level[5] = PreciseJump
level[6] = Room8
level[7] = Zigag
level[8] = SpikeLord
level[9] = Intro_Falling
level[10] = Room13
level[11] = Waiting
level[12] = Quick_Up
level[13] = Room15
level[14] = Room16
level[15] = room_Gravity1
level[16] = room_Gravity2
level[17] = room_Gravity3
level[18] = room_Gravity4
level[19] = room_Gravity5
level[20] = room_Gravity6

// file_delete(game_save_id + "savedata.dat")
ql();
if (file_exists(global.customleveldirectory + "TEMPLEVEL")) {file_delete(global.customleveldirectory + "TEMPLEVEL")}
repeat(2){SortLevels();}
