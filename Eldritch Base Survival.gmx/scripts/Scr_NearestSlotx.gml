///Scr_NearestSlotx(mx,my)
var xx = argument[0];
var yy = argument[1];
slot = instance_nearest(xx,yy,Obj_InventorySlot);
targetx = slot.x
for (tx = 0; tx < Obj_Inventory.width; tx++;)
{
    if Obj_Inventory.slotx[tx,0] == targetx
    {
    return tx;
    exit;
    };
};
