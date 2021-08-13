//initialize switch
onlevel = 1
level = 0
switch(y){
	case 80: 
	switch(x){
	case 48-11: level = 1 break;
	case 112-11: level = 2  break;
	case 176-12: level = 3  break;
	case 240-11: level = 4  break;
	case 304-11: level = 5  break;
	case 368-11: level = 6  break;
	case 432-11: level = 7  break;
	}
	break;
	case 144:
	switch(x){
	case 48-11: level = 8  break;
	case 112-11: level = 9  break;
	case 176-11: level = 10  break;
	case 240-11: level = 11  break;
	case 304-11: level = 12  break;
	case 368-11: level = 13  break;
	case 432-11: level = 14  break;
	}
	break;
	case 208:
	switch(x){
	case 48-11: level = 15  break;
	case 112-11: level = 16  break;
	case 176-11: level = 17  break;
	case 240-11: level = 18  break;
	case 304-11: level = 19  break;
	case 368-11: level = 20  break;
	case 432-11: level = 21  break;
	}
	break;
	default: break;
}


