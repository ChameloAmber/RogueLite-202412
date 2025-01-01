// Get input
scr_player_get_input()

// Timers
global.timer.autoAttack += (delta_time/1000000)

// Auto Attack
if global.timer.autoAttack >= global.base.skill.autoAttack {
	script_execute(global.player.skill.autoAttack.activate)
	global.timer.autoAttack = 0
}