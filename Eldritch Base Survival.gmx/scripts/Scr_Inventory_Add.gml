///Scr_Inventory_Add(x,y,item)
var xx = argument[0];
var yy = argument[1];
var add_item = argument[2];

//Check for Out of Range
if (xx != median(0,xx,Obj_Inventory.width)) || (yy != median(0,yy,Obj_Inventory.height))
{
    show_debug_message("The x and y are outside the range.");
    exit;
};

//Get the Item Count
var item_count = Obj_Inventory.count[# xx,yy];

//If Empty Slot
if (item_count == 0)
{
    //Add the Item
    Obj_Inventory.box[# xx,yy] = add_item;
    
    //Add 1 to the Count
    Obj_Inventory.count[# xx,yy]++;
    
    //Return back out
    return true;
}
else
//If Items are present
if (item_count > 0)
{
    //There is already an Item here
    //Check if item can be added
    if (Obj_Inventory.box[# xx,yy] == add_item) && (Obj_Inventory.count[# xx, yy] < global.maxstacksize)
    {
        Obj_Inventory.count[# xx,yy]++;
        return true;
    }
    else
    {
    show_debug_message("There is already an item there.");
    return false;
    }
}
else
{
    //Item count is less than zero
    show_error("The Item Count is Less than Zero.",false)
}
