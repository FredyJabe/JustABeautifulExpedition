/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if (!visible)
{
	mouse_over = false;
	pressed = false;
	clicked = false;
	return;
}
var oldOver = mouse_over;
var oldPressed = pressed;
var mx		= window_mouse_get_x();
var my		= window_mouse_get_y();

mouse_over	= mx>=ctrl_left && my>=ctrl_top && mx<ctrl_right && my<ctrl_bottom;
pressed		= mouse_over && mouse_check_button(mb_left);

clicked = (oldPressed && oldOver && mouse_over && !pressed)