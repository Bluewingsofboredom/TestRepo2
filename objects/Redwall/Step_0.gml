// === MOVEMENT PART ===
var next_x = x + lengthdir_x(move_speed, dir);
var next_y = y + lengthdir_y(move_speed, dir);

// If no wall, move
if (!place_meeting(next_x, next_y, Wall)) {
    x = next_x;
    y = next_y;
} else {
    // Hit wall: pick a new direction
    dir = choose(0, 90, 180, 270);
}

// Randomly change direction after a while
change_dir_timer -= 1;
if (change_dir_timer <= 0) {
    dir = choose(0, 90, 180, 270);
    change_dir_timer = irandom_range(60, 120);
}

// === PLAYER INTERACTION PART ===
if (can_show_message && place_meeting(x, y, Object1)) {
    show_message("Hello there, adventurer!");
    can_show_message = false;
    alarm[0] = cooldown_time;
}
