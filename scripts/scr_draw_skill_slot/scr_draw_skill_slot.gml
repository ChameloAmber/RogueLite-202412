// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_skill_slot(_slot){
	var _textType = ""
	var _textCharge = ""
	var _textButton = ""
	var _drawBarType = "none"
	
	var _config = {
		textTypeX		: 0,
		textTypeY		: -22,
		textButtonX		: 8,
		textButtonY		: 58,
		textChargeX		: 50,
		textChargeY		: 58,
		barXstart		: 4,
		barYstart		: 84,
		barLength		: 72,
		barHeight		: 12,
	}

	switch _slot {
		case "autoAttack":
			_textButton = "AUTO"
			break
		case "player1":
			_textButton = "Q"
			break
		case "player2":
			_textButton = "W"
			break
		case "player3":
			_textButton = "E"
			break
		case "wild1":
			_textButton = "A"
			break
		case "wild2":
			_textButton = "S"
			break
		case "wild3":
			_textButton = "D"
			break
		default:
			// Not a slot
			return
	}

	if global.skills[? _slot].skill != -1 {
		switch global.skills[? _slot].skill.type {
			case "passive":
				_textType = "Passive"
				_drawBarType = "passive"
				break
			case "toggle":
				_textType = "Toggle"
				_drawBarType = "toggle"
				break
			case "activate":
				_textType = "Active"
				_drawBarType = "cooldown"
				break
			case "charges":
				_textType = "Charge"
				_textCharge = global.skills[? _slot].charges
				_drawBarType = "cooldown"
				break
		}
	} else {
		_textType = "-"
	}
	
	if global.skills[? "player1"].disabled > 0 {
		_drawBarType = "disabled"
	}
	
	draw_text(x+_config.textTypeX, y+_config.textTypeY, _textType)
	draw_text(x+_config.textButtonX, y+_config.textButtonY, _textButton)
	draw_text(x+_config.textChargeX, y+_config.textChargeY, _textCharge)
	switch _drawBarType {
		case "none":
			draw_rectangle_color(self.x+_config.barXstart, self.y+_config.barYstart, self.x+(_config.barXstart+_config.barLength), self.y+(_config.barYstart+_config.barHeight), c_black, c_black, c_black, c_black, false)
			break
		case "cooldown":
			draw_rectangle_color(self.x+_config.barXstart, self.y+_config.barYstart, self.x+(_config.barXstart+_config.barLength), self.y+(_config.barYstart+_config.barHeight), c_red, c_red, c_red, c_red, false)
			draw_rectangle_color(self.x+_config.barXstart, self.y+_config.barYstart, self.x+_config.barXstart+((scr_player_get_variable(string("skill-{0}-timer", _slot), true)/scr_player_get_variable(string("skill-{0}-cooldown", _slot), true))*_config.barLength), self.y+(_config.barYstart+_config.barHeight), c_green, c_green, c_green, c_green, false)
			break
		case "toggle":
			if global.skills[? _slot].toggle {
				draw_rectangle_color(self.x+_config.barXstart, self.y+_config.barYstart, self.x+(_config.barXstart+_config.barLength), self.y+(_config.barYstart+_config.barHeight), c_blue, c_blue, c_blue, c_blue, false)
			} else {
				draw_rectangle_color(self.x+_config.barXstart, self.y+_config.barYstart, self.x+(_config.barXstart+_config.barLength), self.y+(_config.barYstart+_config.barHeight), c_orange, c_orange, c_orange, c_orange, false)
			}
			break
		case "passive":
			draw_rectangle_color(self.x+_config.barXstart, self.y+_config.barYstart, self.x+(_config.barXstart+_config.barLength), self.y+(_config.barYstart+_config.barHeight), c_aqua, c_aqua, c_aqua, c_aqua, false)
			break
		case "disabled":
			draw_rectangle_color(self.x+_config.barXstart, self.y+_config.barYstart, self.x+(_config.barXstart+_config.barLength), self.y+(_config.barYstart+_config.barHeight), c_silver, c_silver, c_silver, c_silver, false)
			break
	}
}