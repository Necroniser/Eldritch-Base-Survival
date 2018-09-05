///mx_to_Invx(mx);
var yy = argument[0];
if (yy < Obj_Inventory.y) return -1;
return (yy - Obj_Inventory.y) div Obj_Inventory.box_size;
