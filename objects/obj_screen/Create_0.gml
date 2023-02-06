/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
current_window_width = 0;// window_get_width();
current_window_height = 0;// window_get_height();
gui_width = window_get_width();
gui_height = window_get_height();
if (os_browser!=browser_not_a_browser)
{
	gui_width = browser_width;
	gui_height = browser_height;
}