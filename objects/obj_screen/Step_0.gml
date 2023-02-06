/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var w_width = window_get_width();
var w_height = window_get_height();

if (os_browser!=browser_not_a_browser)
{
	var b_width = browser_width;
	var b_height = browser_height;
	if (w_width!=b_width || w_height!=b_height)
	{
		w_width = b_width;
		w_height = b_height;
		window_set_size(w_width,w_height);
	}
}

if (w_width!=current_window_width || w_height!=current_window_height)
{	
	current_window_width = w_width;
	current_window_height = w_height;
}


display_set_gui_maximize(1,1,0,0);