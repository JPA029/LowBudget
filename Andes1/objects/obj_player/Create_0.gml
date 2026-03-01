x +=  hspeed;
y +=  vspeed;

move_speed=3;
facing=0;

sprite_index= Sprite1;
image_speed=0;

  if (!variable_global_exists("lives")) {
    global.lives = 3;
}
