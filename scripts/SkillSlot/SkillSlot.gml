// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SkillSlot() constructor{
	skill = -1
	level = 1
	toggle = false
	charge = {
		current: 0,
		base: 0,
	}
	cost = {
		current: 0,
		base: 0,
		modifier: 0,
		multiplier: 1.0
	}
	disabled = 0
	variables = [0, 0, 0, 0]
}