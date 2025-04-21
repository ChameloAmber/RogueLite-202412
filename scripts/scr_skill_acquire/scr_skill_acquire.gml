// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_skill_acquire(_slot, _codeName){
	if !ds_map_exists(global.library, _codeName) || !ds_map_exists(global.skills, _slot) {
		// Skill or slot doesn't exists	
		return
	}

	// Slot skill
	global.skills[? _slot].skill = global.library[? _codeName]
	
	// Set cost
	global.skills[? _slot].cost.current = 0
	global.skills[? _slot].cost.base = global.library[? _codeName].baseCost
	
	// Set charge
	global.skills[? _slot].charge.current = 0
	global.skills[? _slot].charge.base = global.library[? _codeName].maxCharge
	
	// Reset Skill Disabled
	global.skills[? _slot].disabled = 0
	
	// Set toggle Off
	global.skills[? _slot].toggle = false
	
	// Reset Variables
	global.skills[? _slot].variables[0] = 0
	global.skills[? _slot].variables[1] = 0
	global.skills[? _slot].variables[2] = 0
	global.skills[? _slot].variables[3] = 0
	
	// Trigger onAcquired Skill
	script_execute(global.skills[? _slot].skill.onAcquired, _slot)
	
	// If Passive Skill: Toggle On
	if global.skills[? _slot].skill.type == "passive" {
		global.skills[? _slot].toggle = true
		script_execute(global.skills[? _slot].skill.onToggleOn, _slot)
	}
}