/// @description Insert description here
// You can write your code in this editor
var _text = ""

if global.skills[? "wild2"].skill != -1 {
	switch global.skills[? "wild2"].skill.type {
		case "passive":
			_text = "passive online"
			break
		case "toggle":
			if global.skills[? "wild2"].toggle {
				_text = "toggle: ON"
			} else {
				_text = "toggle: OFF"
			}
			break
		case "activate":
			_text = string("{0}/{1}", scr_player_get_variable("skill-wild2-timer"), scr_player_get_variable("skill-wild2-cooldown"))
			if scr_player_get_variable("skill-wild2-timer", true) >= scr_player_get_variable("skill-wild2-cooldown", true) {
				_text += " - READY!"
			}
			break
		case "charges":
			_text = string("Charges: {0} [{1}/{2}]", global.skills[? "wild2"].charges, scr_player_get_variable("skill-wild2-timer"), scr_player_get_variable("skill-wild2-cooldown"))
			break
	}
} else {
	_text = "no skill"
}

if global.skills[? "wild2"].disabled > 0 {
	_text += string("[DISABLED: {0}]", string_format(global.skills[? "wild2"].disabled, 1, 1))
}

draw_text(x, y, string("Wildcard Skill 2: {0}", _text))