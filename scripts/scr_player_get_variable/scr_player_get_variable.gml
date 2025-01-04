// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_get_variable(_var, _real = false){
	/* 
		List of variables that can be queried
		SKILL
		- skill-autoAttack-timer
		- skill-player1-timer
		- skill-player2-timer
		- skill-player3-timer
		- skill-wild1-timer
		- skill-wild2-timer
		- skill-wild3-timer
		- skill-autoAttack-cooldown
		- skill-player1-cooldown
		- skill-player2-cooldown
		- skill-player3-cooldown
		- skill-wild1-cooldown
		- skill-wild2-cooldown
		- skill-wild3-cooldown
	*/
	
	var _value = 0
	switch _var {
		case "skill-autoAttack-timer":
			_value = string_format(global.skills[? "autoAttack"].timer.current, 1, 1)
			break
		case "skill-player1-timer":
			_value = string_format(global.skills[? "player1"].timer.current, 1, 1)
			break
		case "skill-player2-timer":
			_value = string_format(global.skills[? "player2"].timer.current, 1, 1)
			break
		case "skill-player3-timer":
			_value = string_format(global.skills[? "player3"].timer.current, 1, 1)
			break
		case "skill-wild1-timer":
			_value = string_format(global.skills[? "wild1"].timer.current, 1, 1)
			break
		case "skill-wild2-timer":
			_value = string_format(global.skills[? "wild2"].timer.current, 1, 1)
			break
		case "skill-wild3-timer":
			_value = string_format(global.skills[? "wild3"].timer.current, 1, 1)
			break
		case "skill-autoAttack-cooldown":
			_value = string_format((global.skills[? "autoAttack"].timer.base * global.skills[? "autoAttack"].timer.multiplier) + global.skills[? "autoAttack"].timer.modifier, 1, 1)
			break
		case "skill-player1-cooldown":
			_value = string_format((global.skills[? "player1"].timer.base * global.skills[? "player1"].timer.multiplier) + global.skills[? "player1"].timer.modifier, 1, 1)
			break
		case "skill-player2-cooldown":
			_value = string_format((global.skills[? "player2"].timer.base * global.skills[? "player2"].timer.multiplier) + global.skills[? "player2"].timer.modifier, 1, 1)
			break
		case "skill-player3-cooldown":
			_value = string_format((global.skills[? "player3"].timer.base * global.skills[? "player3"].timer.multiplier) + global.skills[? "player3"].timer.modifier, 1, 1)
			break
		case "skill-wild1-cooldown":
			_value = string_format((global.skills[? "wild1"].timer.base * global.skills[? "wild1"].timer.multiplier) + global.skills[? "wild1"].timer.modifier, 1, 1)
			break
		case "skill-wild2-cooldown":
			_value = string_format((global.skills[? "wild2"].timer.base * global.skills[? "wild2"].timer.multiplier) + global.skills[? "wild2"].timer.modifier, 1, 1)
			break
		case "skill-wild3-cooldown":
			_value = string_format((global.skills[? "wild3"].timer.base * global.skills[? "wild3"].timer.multiplier) + global.skills[? "wild3"].timer.modifier, 1, 1)
			break
	}
	
	if _real {
		return real(_value)	
	} else {
		return string(_value)	
	}
}