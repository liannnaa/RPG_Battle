if(global.action_completed){
	visible = true
	global.action_completed = false
	return
}

if(visible){
	// enter selects choice
	if(keyboard_check_pressed(vk_enter)){
		obj_enemy1.image_speed = 0
		obj_enemy2.image_speed = 0
		obj_enemy3.image_speed = 0
	
		obj_enemy1.image_index = 0
		obj_enemy2.image_index = 0
		obj_enemy3.image_index = 0
		if(choice == 1){
			obj_attack_text.visible = true
		}
	 
		if(choice == 2){
			obj_magic_text.magic = true
		}
	 
		if(choice == 3){
			obj_item_text.visible = true
		}
		visible = false
	}

	// down arrow changes choice
	if(keyboard_check_pressed(vk_down) && choice != 3){
		choice++
	}
	// up arrow changes choice
	if(keyboard_check_pressed(vk_up) && choice != 1){
		choice--
	}

	// chooses between attack, magic, item
	if(choice == 1){
		text = pointer + option1 + "  " + option2 + "  " + option3
	}

	if(choice == 2){
		text = "  " + option1 + pointer + option2 + "  " + option3
	}

	if(choice == 3){
		text = "  " + option1 + "  " + option2 + pointer + option3
	}
}