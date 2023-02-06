/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var lctrl_key_press = keyboard_check(vk_lcontrol);

move_forward_press =
	keyboard_check(key_up) ||
	obj_btn_forward.pressed;
	
move_forward_pressed =
	keyboard_check_pressed(key_up) ||
	obj_btn_forward.pressed;

move_backward_press =
	keyboard_check(key_down) ||
	obj_btn_backward.pressed;

move_backward_pressed =
	keyboard_check_pressed(key_down) ||
	obj_btn_backward.pressed;
	
move_left_press =
	(keyboard_check(key_left) && !lctrl_key_press) ||
	obj_btn_move_left.pressed;
	
move_left_pressed =
	(keyboard_check_pressed(key_left) && !lctrl_key_press) ||
	obj_btn_move_left.pressed;
	
move_right_press =
	(keyboard_check(key_right) && !lctrl_key_press) ||
	obj_btn_move_right.pressed;
	
move_right_pressed =
	(keyboard_check_pressed(key_right) && !lctrl_key_press) ||
	obj_btn_move_right.pressed;
	
turn_left_press =
	(keyboard_check(key_left) && lctrl_key_press) ||
	keyboard_check(key_turn_left)||
	obj_btn_turn_left.pressed;
	
turn_left_pressed =
	(keyboard_check_pressed(key_left) && lctrl_key_press) ||
	keyboard_check_pressed(key_turn_left)||
	obj_btn_turn_left.pressed;

turn_right_press =
	(keyboard_check(key_right) && lctrl_key_press) ||
	keyboard_check(key_turn_right)||
	obj_btn_turn_right.pressed;

turn_right_pressed =
	(keyboard_check_pressed(key_right) && lctrl_key_press) ||
	keyboard_check_pressed(key_turn_right)||
	obj_btn_turn_right.pressed;
	