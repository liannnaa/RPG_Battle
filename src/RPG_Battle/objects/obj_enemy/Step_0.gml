if(enemy_hp <= 0 && visible){
	visible = false
	global.enemies--
	if(global.enemies <= 0){
		global.won = true
		room_goto(rm_end)
	}
}