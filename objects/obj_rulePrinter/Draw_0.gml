/// @description Insert description here
// You can write your code in this editor
text = "Rule " + string(current+1) + ": " + rules[current];
draw_rectangle(100,100,1000,120,false);
draw_text_color(100,100,text,c_black,c_black,c_black,c_black,1);
draw_self();