if(magic){
	choice = irandom_range(1,4)
	if(choice == 1){
		obj_enemy1.enemy_hp -= 2
		obj_enemy1.image_speed = 1
	}
	 
	if(choice == 2){
		obj_enemy2.enemy_hp -= 2
		obj_enemy2.image_speed = 1
	}
	 
	if(choice == 3){
		obj_enemy3.enemy_hp -= 2
		obj_enemy3.image_speed = 1
	}
	magic_timer = 0
	text = "***Attacking random enemy***"
	magic = false
	visible = true
}

if(visible){
	magic_timer += 1
	if(magic_timer > 120){
		global.action_completed = true
		visible = false
		obj_player.player_hp--
	}
}