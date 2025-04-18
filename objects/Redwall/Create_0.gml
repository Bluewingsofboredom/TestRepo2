// Movement
dir = choose(0, 90, 180, 270); // random direction
move_speed = 2;
change_dir_timer = irandom_range(60, 120); // change direction every 1–2 seconds

// Message cooldown
can_show_message = true;
cooldown_time = 300; // 5 seconds at 60 FPS
