/// @description Insert description here
// You can write your code in this editor

steam_update();


if (steam_api == false)
{
	if (steam_initialised())
	{
	    if (steam_stats_ready() && steam_is_overlay_enabled())
	    {
	        steam_api = true;
			show_message_async("Steam Initilized!");
	    }
	}
}