/// @description menu controls
// You can write your code in this editor

//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//keyboard controls
if(menu_control)
{
	var mouse_y_gui = device_mouse_y_to_gui(0);
	var mouse_x_gui = device_mouse_x_to_gui(0);
	
	if (mouse_y_gui < menu_y) && (mouse_y_gui > menu_top) && (mouse_x_gui < menu_x) {
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 3);
		
		if(mouse_check_button_pressed(mb_left)) {
			menu_x_target = gui_width + 200;
			menu_committed = menu_cursor;
			menu_control = false;
		}
	}
}

if(menu_x > (gui_width + 150)) && (menu_committed != -1){
	switch (menu_committed) {
		case 2: default: SlideTransition(TRANS_MODE.GOTO, rGallery); break;
		case 0: game_end(); break;
	}
}

