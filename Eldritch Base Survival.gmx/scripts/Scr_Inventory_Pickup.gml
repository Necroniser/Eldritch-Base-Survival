///Scr_Inventory_Pickup(item)
var add_item = argument[0];

//Check for Item in Inventory
for (var yy = 0; yy < Obj_Inventory.height; yy++)
{
    for (var xx = 0; xx < Obj_Inventory.width; xx++)
    {
        if (Obj_Inventory.box[# xx, yy] = add_item) && (Obj_Inventory.count[# xx, yy] < global.maxstacksize)
        {
           Obj_Inventory.count[# xx, yy]++;
           return true;
        }
    }
};


//Check for an Empty Slot
for (var yy = 0; yy < Obj_Inventory.height; yy++)
{
    for (var xx = 0; xx < Obj_Inventory.width; xx++)
    {
        if (Obj_Inventory.box[# xx, yy] = item.air)
        {
           Obj_Inventory.box[# xx, yy] = add_item;
           Obj_Inventory.count[# xx, yy]++;
           return true; 
        }
    }
};

//Show Debug Message
show_debug_message("The Inventory is Full");
return false;
