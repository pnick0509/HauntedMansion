///@argument x1      |0
///@argument y1      |1
///@argument x2      |2
///@argument y2      |3
///@argument x3      |4
///@argument y3      |5
///@argument x4      |6
///@argument y4      |7
///@argument color1  |8
///@argument color2  |9
///@argument outline |10
if(!argument10){
	draw_primitive_begin(pr_trianglelist);

	draw_vertex_colour(argument0, argument1, argument8, 1);
	draw_vertex_colour(argument2, argument3, argument8, 1);
	draw_vertex_colour((argument4+argument6)/2, (argument5+argument7)/2, argument9, 1);

	draw_vertex_colour(argument0, argument1, argument8, 1);
	draw_vertex_colour(argument4, argument5, argument9, 1);
	draw_vertex_colour((argument4+argument6)/2, (argument5+argument7)/2, argument9, 1);

	draw_vertex_colour(argument2, argument3, argument8, 1);
	draw_vertex_colour(argument6, argument7, argument9, 1);
	draw_vertex_colour((argument4+argument6)/2, (argument5+argument7)/2, argument9, 1);

	draw_primitive_end();
}else{
	draw_primitive_begin(pr_linestrip);

	draw_vertex_colour(argument0, argument1, argument8, 1);
	draw_vertex_colour(argument2, argument3, argument8, 1);
	draw_vertex_colour(argument6, argument7, argument9, 1);
	draw_vertex_colour(argument4, argument5, argument9, 1);
	draw_vertex_colour(argument0, argument1, argument8, 1);

	draw_primitive_end();
}