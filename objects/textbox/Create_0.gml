//line details
full_str = dialog_holder._script[dialog_holder.current_line].str; //string displayed in textbox
str = "";
convo_end = dialog_holder.convo_end;
talking = !dialog_holder.convo_end;
talking_to = noone;
room_change = false;
actor_toggle = false;
ghost_alpha = 1;
//typing effect
cutoff = 0;
len = string_length(full_str);
typing = true;
instant = false;
delay = 4;
alarm[0] = delay;
//textbox draw details
xx = 160;
yy = 800;
//font values
line_height = 20;
line_width = 640;
//textbox bounding
x1 = 100;
x2 = 860;
y1 = 750;
y2 = room_height;