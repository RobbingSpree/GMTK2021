/// @description Insert description here
// You can write your code in this editor

if(newplay < 16)
{
	ds_list_add(lastTenNotes,newplay);
	newplay = 16;
}

if ds_queue_size(lastTenNotes) > 10
	ds_queue_dequeue(lastTenNotes);
