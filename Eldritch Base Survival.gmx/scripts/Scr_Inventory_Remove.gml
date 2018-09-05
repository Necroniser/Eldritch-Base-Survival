///Scr_Inventory_Remove(x,y);
var xx = argument[0];
var yy = argument[1];

//Check for Out of Range
if (xx != median(0,xx,Obj_Inventory.width)) || (yy != median(0,yy,Obj_Inventory.height))
{
    show_debug_message("The x and y are outside the range.");
    exit;
};

//Get the Item Count
var item_count = Obj_Inventory.count[#xx,yy];

//Make sure we have items
if (item_count > 0)
{   
    //Find item removed
    var remove_item = Obj_Inventory.box[# xx,yy];
    //Removing Count
    Obj_MouseItem.remove_count = Obj_Inventory.count[# xx,yy];
    Obj_Inventory.count[# xx,yy] = 0;
    Obj_Inventory.box[# xx,yy] = item.air;
    //Return item removed && Count
    return remove_item;
}
else
if (item_count == 0)
{
    show_debug_message("There was no Item");
    return item.air;
};

