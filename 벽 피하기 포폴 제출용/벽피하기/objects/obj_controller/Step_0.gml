timer++;
difficulty_timer++;
score++;

if (timer >= spawn_time) {
    timer = 0;

   var spawn_x = random_range(sprite_width/2, room_width - sprite_width/2);
    instance_create_layer(spawn_x, -20, "Instances", obj_enemy);
}

if (difficulty_timer >= room_speed * 5) {
    difficulty_timer = 0;

    if (spawn_time > 10) {
        spawn_time -= 2;
    }
}