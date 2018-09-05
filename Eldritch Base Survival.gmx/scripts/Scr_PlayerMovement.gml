// Variables
up = keyboard_check(ord("W")) || keyboard_check(vk_up);
down = keyboard_check(ord("S")) || keyboard_check(vk_down);
left = keyboard_check(ord("A")) || keyboard_check(vk_left);
right = keyboard_check(ord("D")) || keyboard_check(vk_right);
sprint = keyboard_check(vk_shift);



//Setting Visual Depth
depth = -y-16;


//Determining Sprint
if (sprint)
{
    movespeed = sprintspeed
}
else
{
    movespeed = walkspeed
};


// Up - Down
if (up) && !(down)    //Up
{
    vspeed = -movespeed;
}
else
if (down) && !(up)    //Down
{
    vspeed = movespeed;
}
else                  //Stopped
{
    vspeed = 0;
};


//Left - Right
if (left) && !(right) //Left
{
    hspeed = -movespeed;
}
else
if (right) && !(left) //Right
{
    hspeed = movespeed;
}
else                  //Stopped
{
    hspeed = 0;
};


//Collisions Checks
Horizontal = collision_point(x + hspeed, y, Obj_Obstacle, false, true);  //Direct Left - Right
Vertical = collision_point(x, y + vspeed, Obj_Obstacle, false, true);    //Direct Up - Down

//Collision Results
if (Vertical) // UP AND DOWN
{
    vspeed = 0;
};
if (Horizontal) // LEFT AND RIGHT
{
    hspeed = 0;
};




















