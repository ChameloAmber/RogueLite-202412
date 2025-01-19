// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_skill_remove(_slot){
	if global.skills[? _slot].skill == -1 {
		// No skill inserted
		return
	}
	
	// Trigger skill remove
	script_execute(global.skills[? _slot].skill.onRemoved, _slot)
	
	// Remove skill
	global.skills[? _slot].skill = -1
}