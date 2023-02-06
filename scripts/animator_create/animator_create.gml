// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animator_create(config,current){
	var anims = animator_load(config);
	var animator = {
		animations: anims,
		previous_animation:"",
		current_animation:current,
		current_config : undefined,
		frame_index:0,
		vbuffer : undefined,
		
		
		update : function(){
			if (current_animation!=previous_animation)
			{
				previous_animation = current_animation;
				frame_index = 0;
				current_config = animations[? current_animation];
			}
			else
			{
				current_config= animations[? current_animation];
				frame_index+= current_config.frames_per_second * (delta_time/1000000);
				if (frame_index>=current_config.frames)
				{
					frame_index = 0;
				}
			}
			vbuffer = current_config.vbuffers[| frame_index>>0];
		},
		
		draw : function(mat,tex){
			if (vbuffer!=undefined)
			{
				matrix_set( matrix_world, mat );
				vertex_submit( vbuffer, pr_trianglelist,tex );
				matrix_set( matrix_world, obj_terrain.matrix_identity );
			}
		}
	}
	
	return animator;
}