// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_variables(){
	global.library = ds_map_create()
	ds_map_add(global.library, "classic_auto_attack", new Skill("classic_auto_attack", "activate", 2))
	
	global.player = {
		hp: 100,
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
	
	global.base = {
		hp: 100,
		attack: 5,
		skill: {
			autoAttack: global.library[? "classic_auto_attack"].cooldown,
			player1: 1,
			player2: 1,
			player3: 1,
			wild1: 1,
			wild2: 1,
			wild3: 1,
		}
	}
	
	global.modifier = {
		attack: 0,
		skill: {
			autoAttack: 0,
			player1: 0,
			player2: 0,
			player3: 0,
			wild1: 0,
			wild2: 0,
			wild3: 0,
		}
	}
	
	global.multiplier = {
		attack: 1.0,
		skill: {
			autoAttack: 1.0,
			player1: 1.0,
			player2: 1.0,
			player3: 1.0,
			wild1: 1.0,
			wild2: 1.0,
			wild3: 1.0,
		}
	}
	
	global.timer = {
		autoAttack: 0,
		player1: 0,
		player2: 0,
		player3: 0,
		wild1: 0,
		wild2: 0,
		wild3: 0,
	}
	
	global.damageCounter = 0
}