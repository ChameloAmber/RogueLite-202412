// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_skill_slot(_slot){
	var _textType = ""
	var _tagType = ""
	var _textButton = ""
	var _hasCharge = false
	var _textCharge = ""
	var _drawBarType = "none"
	
	var _config = {
		textTypeX		: 0,
		textTypeY		: -22,
		textButtonX		: 50,
		textButtonY		: 3,
		textChargeX		: 92,
		textChargeY		: 83,
		chargeX			: 50,
		chargeY			: 80,
		barX			: 4,
		barY			: 106,
		barLength		: 92,
		barHeight		: 12,
	}

	switch _slot {
		case "autoAttack":
			_tagType = "player"
			_textButton = "AUTO"
			break
		case "player1":
			_tagType = "player"
			_textButton = "Q"
			break
		case "player2":
			_tagType = "player"
			_textButton = "W"
			break
		case "player3":
			_tagType = "player"
			_textButton = "E"
			break
		case "wild1":
			_tagType = "wild"
			_textButton = "A"
			break
		case "wild2":
			_tagType = "wild"
			_textButton = "S"
			break
		case "wild3":
			_tagType = "wild"
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
				_hasCharge = true
				_textCharge = global.skills[? _slot].charges
				if global.skills[? _slot].charges >= global.skills[? _slot].skill.chargesMax {
					_drawBarType = "cooldown-full"
				} else {
					_drawBarType = "cooldown"
				}
				break
		}
	} else {
		_textType = "-"
	}
	
	if global.skills[? _slot].disabled > 0 {
		_drawBarType = "disabled"
	}
	
	// Draw Title
	draw_text(x+_config.textTypeX, y+_config.textTypeY, _textType)
	
	// Draw Tag
	switch _tagType {
		case "player":
			draw_sprite(spr_skill_slot_player_tag, 0, x, y)
			break
		case "wild":
			draw_sprite(spr_skill_slot_wild_tag, 0, x, y)
			break
	}
	
	// Draw Button
	draw_set_font(fnt_small)
	draw_set_halign(fa_center)
	draw_text(x+_config.textButtonX, y+_config.textButtonY, _textButton)
	
	// Draw Skill Sprite
	if global.skills[? _slot].skill != -1 {
		draw_sprite(global.skills[? _slot].skill.displaySprite, 0, x+20, y+30)
	}
	
	// Draw Charge Tag + Charge Count
	if _hasCharge {
		switch _tagType {
			case "player":
				draw_sprite(spr_skill_slot_player_charge, 0, x+_config.chargeX, y+_config.chargeY)
				break
			case "wild":
				draw_sprite(spr_skill_slot_wild_charge, 0, x+_config.chargeX, y+_config.chargeY)
				break
		}
		
		draw_set_halign(fa_right)
		draw_text(x+_config.textChargeX, y+_config.textChargeY, _textCharge)
	}
	
	draw_set_font(fnt_default)
	draw_set_halign(fa_left)
	
	// Draw Base Cooldown Bar
	draw_sprite(spr_skill_slot_cooldown_base, 0, x+_config.barX, y+_config.barY)
	
	switch _drawBarType {
		case "none":
			break
		case "cooldown":
			draw_sprite_part(spr_skill_slot_cooldown_cooldown, 0, 0, 0, ((scr_player_get_variable(string("skill-{0}-timer", _slot), true, true)/scr_player_get_variable(string("skill-{0}-cooldown", _slot), true, true))*_config.barLength),_config.barHeight, x+_config.barX, y+_config.barY)
			break
		case "cooldown-full":
			draw_sprite(spr_skill_slot_cooldown_cooldown, 0, x+_config.barX, y+_config.barY)
			break
		case "toggle":
			if global.skills[? _slot].toggle {
				draw_sprite(spr_skill_slot_cooldown_toggle_on, 0, x+_config.barX, y+_config.barY)
			} else {
				draw_sprite(spr_skill_slot_cooldown_toggle_off, 0, x+_config.barX, y+_config.barY)
			}
			break
		case "passive":
			draw_sprite(spr_skill_slot_cooldown_passive, 0, x+_config.barX, y+_config.barY)
			break
		case "disabled":
			draw_sprite(spr_skill_slot_cooldown_disabled, 0, x+_config.barX, y+_config.barY)
			break
	}
}