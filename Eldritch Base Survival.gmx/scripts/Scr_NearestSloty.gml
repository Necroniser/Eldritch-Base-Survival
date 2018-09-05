///Scr_NearestSloty(mx,my)
var xx = argument[0];
var yy = argument[1];
slot = instance_nearest(xx,yy,Obj_InventorySlot);
targety = slot.y
for (ty = 0; ty < Obj_Inventory.height; ty++;)
{
    if Obj_Inventory.sloty[0,ty] == targety
    {
    return ty;
    exit;
    };
};
