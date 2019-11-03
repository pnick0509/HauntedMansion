///@argument x1      |0
///@argument y1      |1
///@argument x2      |2
///@argument y2      |3
///@argument x3      |4
///@argument y3      |5
///@argument x4      |6
///@argument y4      |7
///@argument outline |8
if(!argument8){
	draw_primitive_begin(pr_trianglelist);
	draw_vertex(argument0, argument1);
	draw_vertex(argument2, argument3);
	draw_vertex(argument4, argument5);
	draw_vertex(argument2, argument3);
	draw_vertex(argument4, argument5);
	draw_vertex(argument6, argument7);
	draw_primitive_end();	
}else{
	draw_primitive_begin(pr_linestrip);
	draw_vertex(argument0, argument1);
	draw_vertex(argument2, argument3);
	draw_vertex(argument6, argument7);
	draw_vertex(argument4, argument5);
	draw_vertex(argument0, argument1);
	draw_primitive_end();	
}
//draw_rectangle(x1,y1,x2,y2,outline)