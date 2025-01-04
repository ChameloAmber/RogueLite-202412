// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_cooldown_ticker(){
	var _slots = ["autoAttack", "player1", "player2", "player3", "wild1", "wild2", "wild3"]
	
	// Timer
	for(var i = 0; i < array_length(_slots); i++) {
		if global.skills[? _slots[i]].disabled <= 0 { 
			global.skills[? _slots[i]].timer.current = clamp(global.skills[? _slots[i]].timer.current + (delta_time/1000000), 0, (global.skills[? _slots[i]].timer.base * global.skills[? _slots[i]].timer.multiplier) + global.skills[? _slots[i]].timer.modifier) 
		}
	}
	
	// Disable
	for(var i = 0; i < array_length(_slots); i++) {
		global.skills[? _slots[i]].disabled = max(0, global.skills[? _slots[i]].disabled - (delta_time/1000000))
	}
}