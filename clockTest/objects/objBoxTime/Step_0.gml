if(current_second % 2 == 0) {
	image_index = 0;
} else {
	image_index = 1;
}

var buttonPressed = mouse_check_button(mb_any) || keyboard_check(vk_anykey);

if(buttonPressed) {
	game_end();
}