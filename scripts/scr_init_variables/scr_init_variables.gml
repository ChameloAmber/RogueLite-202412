// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_variables(){
	global.library = ds_map_create()
	ds_map_add(global.library, "classic_auto_attack", new Skill("classic_auto_attack", "activate", 2))
	
	global.player = {
		current: {
			hp: 100,
			timer: {
				autoAttack: 0,
				player1: 0,
				player2: 0,
				player3: 0,
				wild1: 0,
				wild2: 0,
				wild3: 0,
			},
		},
		base: {
			timer: {
				autoAttack: 2,
			},
			hp: 100,
		},
		stat: {
			attack: 5, 
			defense: 5,
		},
		modifier: {
			// Variables
			hp: 0,
			timer: {
				autoAttack: 0,
				player1: 0,
				player2: 0,
				player3: 0,
				wild1: 0,
				wild2: 0,
				wild3: 0,
			},
			// Stats
			attack: 0,
			defense: 0,
		},
		multiplier: {
			// Variables
			hp: 1.0,
			timer: {
				autoAttack: 1.0,
				player1: 1.0,
				player2: 1.0,
				player3: 1.0,
				wild1: 1.0,
				wild2: 1.0,
				wild3: 1.0,
			},
			// Stats
			attack: 1.0,
			defense: 1.0,
		},
		skill: {
			autoAttack: global.library[? "classic_auto_attack"],
			player1: -1,
			player2: -1,
			player3: -1,
			wild1: -1,
			wild2: -1,
			wild3: -1,
		}
	}
	
	global.damageCounter = 0
}