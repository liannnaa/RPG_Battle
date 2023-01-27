draw_set_halign(fa_center)
if(global.won){
	draw_text(x, y, "YOU WON!!!")
	return
}

draw_text(x, y, "You Lost")