var mx = keyboard_check(vk_right) - keyboard_check(vk_left);
var my = keyboard_check(vk_down) - keyboard_check(vk_up);

hspeed = mx * move_speed;
vspeed = my * move_speed;


if (hspeed > 0) facing = 2;
else if (hspeed < 0) facing = 3;
else if (vspeed > 0) facing = 0;
else if (vspeed < 0) facing = 1;


if (hspeed != 0 || vspeed != 0) {
    image_speed = 0.25;

    switch (facing) {
        case 0:
            sprite_index = Sprite1; // down
            image_xscale = 1;
            break;

        case 1:
            sprite_index = Sprite9; // up
            image_xscale = 1;
            break;

        case 2:
            sprite_index = Sprite4; // right
            image_xscale = 1;
            break;

        case 3:
            sprite_index = Sprite4;
            image_xscale = -1;
            break;
    }
} else {
    image_speed = 0;

    switch (facing) {
        case 0:
            sprite_index = Sprite1;
            image_xscale = 1;
            break;

        case 1:
            sprite_index = Sprite9;
            image_xscale = 1;
            break;

        case 2:
            sprite_index = Sprite2;
            image_xscale = 1;
            break;

        case 3:
            sprite_index = Sprite2;
            image_xscale = -1;
            break;
    }
}

if (global.lives <= 0) {
   room_goto(Death_screen);
}


if (!place_meeting(x + hspeed, y, oMuro)) {
    x += hspeed;
}


if (!place_meeting(x, y + vspeed, oMuro)) {
    y += vspeed;
}