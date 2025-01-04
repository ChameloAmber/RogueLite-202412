// Get input
scr_player_get_input()
scr_player_cooldown_ticker()

if scr_player_get_variable("skill-autoAttack-timer", true) >= scr_player_get_variable("skill-autoAttack-cooldown", true) {
	global.skills[? "autoAttack"].timer.current = 0
	script_execute(global.skills[? "autoAttack"].skill.onActivate)
}

if global.skills[? "player1"].skill != -1 {
	if (global.skills[? "player1"].skill.type == "activate") && buttonAbilityPlayer1Pressed && (scr_player_get_variable("skill-player1-timer", true) >= scr_player_get_variable("skill-player1-cooldown", true)) {
		global.skills[? "player1"].timer.current = 0
		script_execute(global.skills[? "player1"].skill.onActivate)
	}
}