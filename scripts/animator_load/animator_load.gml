// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animator_load(config){
	var anims = ds_map_create();
	var nb = array_length(config);
	for(var i=0;i<nb;i++)
	{
		var cfg = config[i];
		cfg.vbuffers = load_obj_animations(cfg.archive,cfg.frames);
		anims[? cfg.key] = cfg;
	}
	return anims;
}