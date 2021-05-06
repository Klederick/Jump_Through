if(width < obj_width.width || height < obj_height.height){
repeatx = 0
repeaty = 0	
with obj_gridSquare instance_destroy();
for(i = 0; i < obj_height.height; i++){
for(a = 0; a < obj_width.width; a++){
instance_create_layer(300+repeatx,0+repeaty,"Instances",obj_gridSquare)
repeatx += 32;
}
repeaty += 32;
repeatx = 0
}
width = obj_width.width
height = obj_height.height
}else{
if(width > obj_width.width || height > obj_height.height){
width = obj_width.width
height = obj_height.height	
}
repeatx = 0
repeaty = 0	
}
