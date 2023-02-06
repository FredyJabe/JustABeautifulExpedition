/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

//shader_set(shd_3D_light);
var nbDraw = ds_list_size(draw_list);
for(var i = 0;i<nbDraw;i++)
{
	var toDraw = draw_list[| i];
	var tex=toDraw.texture;
	if (tex=="undefined") tex=-1;
	if (toDraw.vbuffer!=undefined)
	{
		matrix_set(matrix_world,toDraw.matrix);
		vertex_submit( toDraw.vbuffer, pr_trianglelist,tex );
	}
}

/*
var lh = draw_get_lighting();
draw_set_lighting(false);
matrix_set(matrix_world,skybox_matrix);
vertex_submit(skybox_vbuffer,pr_trianglelist,skybox_texture);
draw_set_lighting(lh);
*/
matrix_set( matrix_world, matrix_identity );
//shader_reset();