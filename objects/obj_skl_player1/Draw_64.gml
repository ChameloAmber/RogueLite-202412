/// @description Insert description here
// You can write your code in this editor
var _text = ""

if global.skills[? "player1"].skill != -1 {
	switch global.skills[? "player1"].skill.type {
		case "passive":
			_text = "passive online"
			break
		case "toggle":
			if global.skills[? "player1"].toggle {
				_text = "toggle: ON"
			} else {
				_text = "toggle: OFF"
			}
			break
		case "activate":
			_text = string("{0}/{1}", scr_player_get_variable("skill-player1-timer"), scr_player_get_variable("skill-player1-cooldown"))
			if scr_player_get_variable("skill-player1-timer", true) >= scr_player_get_variable("skill-player1-cooldown", true) {
				_text += " - READY!"
			}
			break
		case "charges":
			_text = string("Charges: {0} [{1}/{2}]", global.skills[? "player1"].charges, scr_player_get_variable("skill-player1-timer"), scr_player_get_variable("skill-player1-cooldown"))
			break
	}
} else {
	_text = "no skill"
}

if global.skills[? "player1"].disabled > 0 {
	_text += string("[DISABLED: {0}]", string_format(global.skills[? "player1"].disabled, 1, 1))
}

draw_text(x, y, string("Player Skill 1: {0}", _text))