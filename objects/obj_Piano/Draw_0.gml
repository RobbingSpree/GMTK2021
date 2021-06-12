/// @description Insert description here
// You can write your code in this editor

var size = ds_queue_size(lastTenNotes);
var qc = ds_queue_create();
ds_queue_copy(qc,lastTenNotes);
for (var i=0; i<size; i++) {
	var val = ds_queue_dequeue(qc);
	draw_text(20+i*20,20,val)
}
ds_queue_destroy(qc);