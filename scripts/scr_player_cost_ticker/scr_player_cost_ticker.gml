// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_cost_ticker(){
	var slots = ["basicAttack", "player1", "player2", "player3", "basicDefense", "wild1", "wild2", "wild3"]

	array_foreach(slots, function(_element, _index) {
		if global.skills[? _element].skill != -1 {
			if global.skills[? _element].disabled > 0 {
				// Resolve disabled
				global.skills[? _element].disabled-- // TODO: Replace this with character's resolve attribute later
			} else {
				// Charge skill
				if global.skills[? _element].charge.current < global.skills[? _element].charge.base {
					global.skills[? _element].cost.current += 10
					if global.skills[? _element].cost.current >= ((global.skills[? _element].cost.base * global.skills[? _element].cost.multiplier) + global.skills[? _element].cost.modifier) && global.skills[? _element].charge.current < global.skills[? _element].charge.base {
						global.skills[? _element].charge.current++
						global.skills[? _element].cost.current -= ((global.skills[? _element].cost.base * global.skills[? _element].cost.multiplier) + global.skills[? _element].cost.modifier)
					}
				}
			}
		}
	})
}