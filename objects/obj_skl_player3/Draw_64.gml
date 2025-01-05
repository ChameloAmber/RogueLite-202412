/// @description Insert description here
// You can write your code in this editor
var _text = ""

if global.skills[? "player3"].skill != -1 {
	switch global.skills[? "player3"].skill.type {
		case "passive":
			_text = "passive online"
			break
		case "toggle":
			if global.skills[? "player3"].toggle {
				_text = "toggle: ON"
			} else {
				_text = "toggle: OFF"
			}
			break
		case "activate":
			_text = string("{0}/{1}", scr_player_get_variable("skill-player3-timer"), scr_player_get_variable("skill-player3-cooldown"))
			if scr_player_get_variable("skill-player3-timer", true) >= scr_player_get_variable("skill-player3-cooldown", true) {
				_text += " - READY!"
			}
			break
		case "charges":
			_text = string("Charges: {0} [{1}/{2}]", global.skills[? "player3"].charges, scr_player_get_variable("skill-player3-timer"), scr_player_get_variable("skill-player3-cooldown"))
			break
	}
} else {
	_text = "no skill"
}

if global.skills[? "player3"].disabled > 0 {
	_text += string("[DISABLED: {0}]", string_format(global.skills[? "player3"].disabled, 1, 1))
}

draw_text(x, y, string("Player Skill 3: {0}", _text))