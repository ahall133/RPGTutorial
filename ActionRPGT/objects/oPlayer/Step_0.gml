//get player inputs
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0, 0, keyRight-keyLeft, keyDown-keyUp);
inputMagnitude = (keyRight-keyLeft != 0) or (keyDown-keyUp != 0);

//movement
hspeed = lengthdir_x(inputMagnitude*speedWalk, inputDirection);
vspeed = lengthdir_y(inputMagnitude*speedWalk, inputDirection);

x += hspeed
y += vspeed

//update sprite index
var _oldSprite = sprite_index;
if (inputMagnitude != 0)
	{
		direction = inputDirection;
		sprite_index = spriteRun;
	} else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame = 0;

//update image index
PlayerAnimateSprite();
	