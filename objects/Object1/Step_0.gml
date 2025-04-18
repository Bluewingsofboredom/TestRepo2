var speedd=4;
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var xinput = right - left
var yinput = down - up
move_and_collide(xinput*speedd,yinput*speedd,Wall)