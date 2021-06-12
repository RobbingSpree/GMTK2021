/// @description Insert description here
// You can write your code in this editor

if(newplay < 16)
{
	ds_list_add(lastTenNotes,newplay);
	newplay = 16;
}

for(i = 0; i < array_length(lastTenNotes); i += 1) {
	draw_text(10*i, 0, string("Caption: ") + string(ds_list_find_value(noteNames,ds_list_find_value(lastTenNotes,i))));
}

draw_text(10,10,lastTenNotes);

