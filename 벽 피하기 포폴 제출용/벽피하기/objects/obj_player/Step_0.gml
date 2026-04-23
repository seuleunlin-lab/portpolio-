var h = keyboard_check(vk_right) - keyboard_check(vk_left);
var v = keyboard_check(vk_down) - keyboard_check(vk_up);

x += h * spd;
y += v * spd;

var half_w = sprite_width / 2;
var half_h = sprite_height / 2;

x = clamp(x, half_w, room_width - half_w);
y = clamp(y, half_h, room_height - half_h);

if (place_meeting(x, y, obj_enemy)) {

    var cam = view_camera[0];
    camera_set_view_pos(cam,
        camera_get_view_x(cam) + irandom_range(-5,5),
        camera_get_view_y(cam) + irandom_range(-5,5)
    );

    show_message("Game Over\nScore: " + string(score));
    room_restart();
}