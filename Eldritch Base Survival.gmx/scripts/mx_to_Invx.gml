///mx_to_Invx(mx);
var xx = argument[0];
if (xx < Obj_Inventory.x) return -1;
return (xx - Obj_Inventory.x) div Obj_Inventory.box_size;
