if (!instance_exists(obj_player)) exit;

// Distance to player
var dx = obj_player.x - x;
var dy = obj_player.y - y;


var move_x = 0;
var move_y = 0;

if (abs(dx) > abs(dy)) {
    move_x = sign(dx) * move_speed;
} else {
    move_y = sign(dy) * move_speed;
}


if (move_x != 0 && !place_meeting(x + move_x, y, oMuro)) {
    x += move_x;
}
else if (move_y != 0 && !place_meeting(x, y + move_y, oMuro)) {
    y += move_y;
}
else {

    if (move_x == 0 && !place_meeting(x + sign(dx) * move_speed, y, oMuro)) {
        x += sign(dx) * move_speed;
    }
    if (move_y == 0 && !place_meeting(x, y + sign(dy) * move_speed, oMuro)) {
        y += sign(dy) * move_speed;
    }
}


if (dx > 0) image_xscale = -1;
else if (dx < 0) image_xscale = 1;