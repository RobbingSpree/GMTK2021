/// @description Insert description here
// You can write your code in this editor

if(newplay < 16)
{
	ds_list_add(lastTenNotes,newplay);
	newplay = 16;
}

if ds_queue_size(lastTenNotes) > 10
	ds_queue_dequeue(lastTenNotes);

if(firstwin == 0)
{
	var qc = ds_queue_create();
	ds_queue_copy(qc,lastTenNotes);
	var qa = ds_queue_create();
	ds_queue_copy(qa,TenNotesAnswer);	
	for(i = 0; i < ds_queue_size(lastTenNotes); i += 1) {
		if(!(ds_queue_dequeue(qc) == ds_queue_dequeue(qa)))
		{
			break;
		}
	
		if(i == 9)
		{
			if(firstwin == 0){
				instance_create_layer(0, 0, "Instances", obj_pianoWin);
			}
			firstwin = 1;
		}
	}
}