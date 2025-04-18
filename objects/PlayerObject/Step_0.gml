var pright=keyboard_check(ord("D"));
var pleft=keyboard_check(ord("A"));
var pup=keyboard_check(ord("W"));
var pdown=keyboard_check(ord("S"));
var pxinput=pright-pleft;
var pyinput=pdown-pup;
var pspeed=4;
move_and_collide(pxinput*pspeed,pyinput*pspeed,FloorObject)

