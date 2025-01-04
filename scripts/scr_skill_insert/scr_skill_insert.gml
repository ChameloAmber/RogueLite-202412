// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_skill_insert(_codeName, _slot){
	if !ds_map_exists(global.library, _codeName) || !ds_map_exists(global.skills, _slot) {
		// Skill or slot doesn't exists	
		return
	}

	global.skills[? _slot].skill = global.library[? _codeName]
	global.skills[? _slot].timer.current = 0
	global.skills[? _slot].timer.base = global.library[? _codeName].cooldown
	global.skills[? _slot].toggle = false
	global.skills[? _slot].charges = 0
	global.skills[? _slot].disabled = 0
	script_execute(global.skills[? _slot].skill.onAcquired)
}