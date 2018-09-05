//Variables
mx = mouse_x;
my = mouse_y;
occupied = false;


//Selecting Target
target = instance_nearest(mx,my,Obj_Interactable);
distance = distance_to_object(target);
if target = instance_nearest(mx,my,Obj_GroundItem)
{
    if collision_point(mx,my,Obj_GroundItem,true,false) && mouse_check_button_pressed(mb_left) && (distance <= reach*32) && (occupied == false) && (target.speed == 0)
    {
        occupied = true;
        if Scr_Inventory_Pickup(target.image_index)
        {
            instance_destroy(target);
        };
    };
};
if target = instance_nearest(mx,my,Obj_HandBreakable)
{
    if collision_point(mx,my,Obj_HandBreakable,true,true) && mouse_check_button_pressed(mb_left) && (distance <= reach*32) && (target.dropsitems == true) && (occupied == false)
    {
    occupied = true;
    with (target)
        {
            if dropsleft>0
            {
            alarm[1] = 1;
            };
        };
    };
};
