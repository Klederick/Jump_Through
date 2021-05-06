/// @description Insert description here
// You can write your code in this editor
selected = 0
choice = obj_createMenuControl.choice
switch(choice){
case 0: choice = S_Player break;
case 1: choice = S_Exit break;
case 2: choice = S_FallingSpike break;
case 3: choice = spr_gravchange break;
case 4: choice = S_Spike break;
case 5: choice = S_Spike180 break
case 6: choice = S_Spike270 break;
case 7: choice = S_Spike90 break;	
case 8: choice = S_Wall break;
default: break;
}