//Argument0 = Item ID



//ITEM IDS

/*
0 = Air
1 = Stone
2 = Iron Ore
3 = Wood Log
*/



//Creating Item
itemid = argument0;
item = instance_create(x,y,Obj_GroundItem);
movedirection = choose(0,15,30,45,60,75,90,105,120,135,150,165,180,195,210,225,240,255,270,285,300,315,330,345);
with (item)
{
    image_speed = 0;
    image_index = other.itemid;
    movedirection = other.movedirection;
    slowingspeed = (((other.dropdistance)/movespeed)/room_speed);
};
