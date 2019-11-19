///@argument x         |0
///@argument y         |1
///@argument point_rad |2
///@argument body_rad  |3
///@argument angle     |4
///@argument outline   |5
if(!argument5){
	draw_primitive_begin(pr_trianglelist);
	for(var i = 0; i < 5; i++){
		draw_vertex(argument0+cos(degtorad(argument4+(72*i)-90))*argument2,argument1+sin(degtorad(argument4+(72*i)-90))*argument2);
		draw_vertex(argument0+cos(degtorad(argument4+36+(72*i)-90))*argument3,argument1+sin(degtorad(argument4+36+(72*i)-90))*argument3);
		draw_vertex(argument0+cos(degtorad(argument4-36+(72*i-90)))*argument3,argument1+sin(degtorad(argument4-36+(72*i)-90))*argument3);
	
		draw_vertex(argument0,argument1);
		draw_vertex(argument0+cos(degtorad(argument4+36+(72*i)-90))*argument3,argument1+sin(degtorad(argument4+36+(72*i)-90))*argument3);
		draw_vertex(argument0+cos(degtorad(argument4-36+(72*i)-90))*argument3,argument1+sin(degtorad(argument4-36+(72*i)-90))*argument3);
	}
	draw_primitive_end();
}else{
	draw_primitive_begin(pr_linestrip);
	for(var i = 0; i < 5; i++){
		draw_vertex(argument0+cos(degtorad(argument4+(72*i)-90))*argument2,argument1+sin(degtorad(argument4+(72*i)-90))*argument2);
		draw_vertex(argument0+cos(degtorad(argument4+36+(72*i)-90))*argument3,argument1+sin(degtorad(argument4+36+(72*i)-90))*argument3);
	}
	draw_vertex(argument0+cos(degtorad(argument4+(72*i)-90))*argument2,argument1+sin(degtorad(argument4+(72*i)-90))*argument2);
	draw_primitive_end();
}