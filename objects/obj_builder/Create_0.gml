obj_globalBalance.customlevelsession = true;
if (obj_globalBalance.playtestload) {
lx = LoadLevel_X("TEMPLEVEL")
ly = LoadLevel_Y("TEMPLEVEL")
ldata = LoadLevel_DATA("TEMPLEVEL")
} else {
lx = LoadLevel_X(obj_globalBalance.customlevelfilename)
ly = LoadLevel_Y(obj_globalBalance.customlevelfilename)
ldata = LoadLevel_DATA(obj_globalBalance.customlevelfilename)
}

alarm[0] = 26;