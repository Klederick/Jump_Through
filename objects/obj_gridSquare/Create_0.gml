/// @description Insert description here
// You can write your code in this editor
tilex = (x - 300)/32
tiley = y/32
draw = 0

	o_Wall = S_Wall
	o_FallingSpike = S_FallingSpike
	o_Spike = S_Spike
	o_Spike90 = S_Spike90
	o_Spike180 = S_Spike180
	o_Spike270 = S_Spike270
	o_Exit = S_Exit
	o_GravChanger = spr_gravchange
	o_Player = S_Player


if (obj_grid.grid[tilex,tiley] != 0) {
switch (obj_grid.grid[tilex,tiley]) {
	case o_Wall: draw = 1; drawsprite = o_Wall; break;
	case o_FallingSpike: draw = 1; drawsprite = o_FallingSpike; break;
	case o_Spike: draw = 1; drawsprite = o_Spike; break;
	case o_Spike90: draw = 1; drawsprite = o_Spike90; break;
	case o_Spike180: draw = 1; drawsprite = o_Spike180; break;
	case o_Spike270: draw = 1; drawsprite = o_Spike270; break;
	case o_GravChanger: draw = 1; drawsprite = o_GravChanger; break;
	case o_Exit: draw = 1; drawsprite = o_Exit; break;
	case o_Player: draw = 1; drawsprite = o_Player; break;
	default: break;
}



}