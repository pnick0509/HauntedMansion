//Created by Preston Nichols on 12/5/2019
//This script wraps text to fit within a certain width
//===TABLE OF VARIABLES===
///@argument x    |0
///@argument y    |1
///@argument w    |2
///@argument text |3

var str = "";
var word = "";

for(var i = 1; i <= string_length(argument3); i++){
	if(string_char_at(argument3,i) != " "){
		word += string_char_at(argument3,i);
	}else{
		word += " ";
		if(string_width(str+word) > argument2){
			str += "\n";	
		}
		str += word;
		word = "";
	}
}
str += word;

//Draw output
draw_text(argument0,argument1,str);