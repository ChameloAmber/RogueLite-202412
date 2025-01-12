// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_skill_insert(_codeName, _slot){
	if !ds_map_exists(global.library, _codeName) || !ds_map_exists(global.skills, _slot) {
		// Skill or slot doesn't exists	
		return
	}

	// SLOT SKILL
	global.skills[? _slot].skill = global.library[? _codeName]
	
	// RESET COOLDOWN
	global.skills[? _slot].timer.current = 0
	
	// RESET CHARGE
	global.skills[? _slot].charges = 0
	
	// RESET SKILL DISABLED
	global.skills[? _slot].disabled = 0
	
	// SET BASE COOLDOWN
	global.skills[? _slot].timer.base = global.library[? _codeName].cooldown
	
	// SET TOGGLE OFF
	global.skills[? _slot].toggle = false
	
	// TRIGGER ONACQUIRED
	script_execute(global.skills[? _slot].skill.onAcquired, _slot)
	
	// TRIGGER TOGGLE ON FOR PASSIVE SKILL
	if global.skills[? _slot].skill.type == "passive" {
		script_execute(global.skills[? _slot].skill.onToggleOn, _slot)
	}
}