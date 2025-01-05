// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_skill_trigger(_slot){
	if ds_map_exists(global.skills, _slot) {
		if global.skills[? _slot].skill == -1 {
			// NO SKILL SLOTTED
			return
		}
		if global.skills[? _slot].disabled > 0 {
			// SKILL IS DISABLED
			// MAYBE ADD WARNING EFFECT HERE
			return
		}
		switch global.skills[? _slot].skill.type {
			case "activate":
				if scr_player_get_variable(string("skill-{0}-timer", _slot), true) >= scr_player_get_variable(string("skill-{0}-cooldown", _slot), true) {
					script_execute(global.skills[? _slot].skill.onActivate, _slot)
				}
				break
			case "toggle":
				if global.skills[? _slot].toggle {
					global.skills[? _slot].toggle = false
					script_execute(global.skills[? _slot].skill.onToggleOff, _slot)
				} else {
					global.skills[? _slot].toggle = true
					script_execute(global.skills[? _slot].skill.onToggleOn, _slot)
				}
				break
			case "charges":
				if global.skills[? _slot].charges > 0 {
					script_execute(global.skills[? _slot].skill.onActivate, _slot)	
				}
				break
		}
	}
}