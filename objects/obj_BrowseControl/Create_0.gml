/// @description Insert description here
// You can write your code in this editor
nolevels = 0;
timer = 0
mutation = 1
up = 0
down = 0
position = 0;
levels = SeekLevels()
if(array_length(levels) = 1 && levels[0] = "0"){
nolevels = 1;
}else{
for(i = 0; i < array_length(levels); i++){
names[i] = LoadLevel_Name(string(levels[i]))
creator[i] = LoadLevel_Creator(string(levels[i]))
}}
if(array_length(levels) = 0){

}else if(array_length(levels) = 1){
	
	if(levels[0] = "0"){

	}else{
	instance_create_layer(x+4,y+59,"Text",obj_browseWindow)

	}
}else if(array_length(levels) = 2){

	instance_create_layer(x+4,y+59,"Text",obj_browseWindow)
instance_create_layer(x+4,y+99,"Text",obj_browseWindow)
}else{

instance_create_layer(x+4,y+59,"Text",obj_browseWindow)
instance_create_layer(x+4,y+99,"Text",obj_browseWindow)
instance_create_layer(x+4,y+139,"Text",obj_browseWindow)
}
