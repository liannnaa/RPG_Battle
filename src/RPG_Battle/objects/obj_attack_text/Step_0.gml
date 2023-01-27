if(visible){
	// enter selects choice
	if(keyboard_check_pressed(vk_enter)){
		if(choice == 1){
			obj_enemy1.image_speed = 1
			obj_enemy1.enemy_hp -= obj_player.player_strength
		}
	 
		if(choice == 2){
			obj_enemy2.image_speed = 1
			obj_enemy2.enemy_hp -= obj_player.player_strength
		}
	 
		if(choice == 3){
			obj_enemy3.image_speed = 1
			obj_enemy3.enemy_hp -= obj_player.player_strength
		}
		choice = 1
		global.action_completed = true
		visible = false
		obj_player.player_hp--
		return
	}

	// down arrow changes choice
	if(keyboard_check_pressed(vk_down) && choice != 3){
		choice++
	}
	// up arrow changes choice
	if(keyboard_check_pressed(vk_up) && choice != 1){
		choice--
	}

	// attack menu
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