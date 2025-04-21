// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_skill_cast(_slot){
	if ds_map_exists(global.skills, _slot) {
		if global.skills[? _slot].skill == -1 {
			// No skill slotted
			return -1
		}
		if global.skills[? _slot].disabled > 0 {
			// Skill is disabled
			return -1
		}
		switch global.skills[? _slot].skill.type {
			case "activate":
				if global.skills[? _slot].charge.current >= 1 {
					script_execute(global.skills[? _slot].skill.onActivate, _slot)
					scr_player_cost_ticker()
					return 0
				} else {
					return -1	
				}
			case "toggle":
				if global.skills[? _slot].toggle {
					global.skills[? _slot].toggle = false
					script_execute(global.skills[? _slot].skill.onToggleOff, _slot)
				} else {
					global.skills[? _slot].toggle = true
					script_execute(global.skills[? _slot].skill.onToggleOn, _slot)
				}
				return -1
			default: 
				// Passive skill or something else
				return -1
		}
	}
}