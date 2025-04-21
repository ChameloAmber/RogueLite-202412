// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_skill_slot(_slot){
	var tagType = ""
	var textButton = ""
	var displayBar = false
	var barType = ""
	var displayCharge = false
	var textCharge = ""
	
	var config = {
		textButtonX		: 50,
		textButtonY		: 3,
		textChargeX		: 92,
		textChargeY		: 83,
		spriteX			: 20,
		spriteY			: 30,
		chargeX			: 50,
		chargeY			: 80,
		barX			: 4,
		barY			: 106,
		barLength		: 92,
		barHeight		: 12,
	}

	// Determine skill color and text
	switch _slot {
		case "basicAttack":
			tagType = "player"
			textButton = "Q"
			break
		case "player1":
			tagType = "player"
			textButton = "W"
			break
		case "player2":
			tagType = "player"
			textButton = "E"
			break
		case "player3":
			tagType = "player"
			textButton = "R"
			break
		case "basicDefense":
			tagType = "wild"
			textButton = "A"
			break
		case "wild1":
			tagType = "wild"
			textButton = "S"
			break
		case "wild2":
			tagType = "wild"
			textButton = "D"
			break
		case "wild3":
			tagType = "wild"
			textButton = "F"
			break
		default:
			// Not a slot
			return
	}

	if global.skills[? _slot].skill != -1 {
		// Determine if bar should be displayed
		switch global.skills[? _slot].skill.type {
			case "activate":
				displayBar = true
				barType = "progress"
				break
			case "toggle":
				displayBar = true
				barType = "toggle"
				break
		}
		
		// Determine if charge should be displayed
		if global.skills[? _slot].charge.base >= 2 {
			displayCharge = true
			textCharge = global.skills[? _slot].charge.current
		}
	}
	
	// Draw tag
	switch tagType {
		case "player":
			draw_sprite(spr_skill_slot_player_tag, 0, x, y)
			break
		case "wild":
			draw_sprite(spr_skill_slot_wild_tag, 0, x, y)
			break
	}
	
	// Draw button
	draw_set_font(fnt_small)
	draw_set_halign(fa_center)
	draw_text(x+config.textButtonX, y+config.textButtonY, textButton)
	
	// Draw skill sprite
	if global.skills[? _slot].skill != -1 {
		draw_sprite(global.skills[? _slot].skill.displaySprite, 0, x+config.spriteX, y+config.spriteY)
	}
	
	// Draw charge tag + charge count
	if displayCharge {
		switch tagType {
			case "player":
				draw_sprite(spr_skill_slot_player_charge, 0, x+config.chargeX, y+config.chargeY)
				break
			case "wild":
				draw_sprite(spr_skill_slot_wild_charge, 0, x+config.chargeX, y+config.chargeY)
				break
		}
		
		draw_set_halign(fa_right)
		draw_text(x+config.textChargeX, y+config.textChargeY, textCharge)
	}
	
	draw_set_font(fnt_default)
	draw_set_halign(fa_left)
	
	// Draw bar
	if displayBar {
		// Draw base cooldown bar
		draw_sprite(spr_skill_slot_cooldown_base, 0, x+config.barX, y+config.barY)
		
		switch barType {
			case "progress": 
				ratio = clamp(global.skills[? _slot].cost.current / ((global.skills[? _slot].cost.base * global.skills[? _slot].cost.multiplier) + global.skills[? _slot].cost.modifier), 0, 1)
				if global.skills[? _slot].charge.current >= global.skills[? _slot].charge.base || ratio == 1 {
					draw_sprite(spr_skill_slot_cooldown_toggle_on, 0, x+config.barX, y+config.barY)
				} else {
					draw_sprite_part(spr_skill_slot_cooldown_cooldown, 0, 0, 0, ratio*config.barLength, config.barHeight, x+config.barX, y+config.barY)
				}
				break
			case "toggle":
				if global.skills[? _slot].toggle {
					draw_sprite(spr_skill_slot_cooldown_toggle_off, 0, x+config.barX, y+config.barY)
				} else {
					draw_sprite(spr_skill_slot_cooldown_disabled, 0, x+config.barX, y+config.barY)
				}
				break
		}
	}
}