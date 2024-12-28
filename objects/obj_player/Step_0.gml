// Get input
scr_player_get_input()

// Timers
global.player.current.timer.autoAttack = global.player.current.timer.autoAttack + (delta_time/1000000)

// Auto Attack
if global.player.current.timer.autoAttack >= global.player.skill.autoAttack.cooldown {
	script_execute(global.player.skill.autoAttack.activate)
	global.player.current.timer.autoAttack = 0
}