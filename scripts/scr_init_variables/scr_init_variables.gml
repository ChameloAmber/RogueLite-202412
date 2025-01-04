// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_variables(){
	global.library = ds_map_create()
	ds_map_add(global.library, "classic_auto_attack", new SkillBase("classic_auto_attack", "activate", 5, 0))
	
	global.skills = ds_map_create()
	ds_map_add(global.skills, "autoAttack", new SkillSlot())
	ds_map_add(global.skills, "player1", new SkillSlot())
	ds_map_add(global.skills, "player2", new SkillSlot())
	ds_map_add(global.skills, "player3", new SkillSlot())
	ds_map_add(global.skills, "wild1", new SkillSlot())
	ds_map_add(global.skills, "wild2", new SkillSlot())
	ds_map_add(global.skills, "wild3", new SkillSlot())
	
	scr_skill_insert("classic_auto_attack", "autoAttack")
	scr_skill_insert("classic_auto_attack", "player1")
	
	global.player = {
		hp: 100,
		healing: 0.0,
		attack: 5,
		defense: 0,
		dodge: 0.0,
	}
	
	global.variable = {
		hp: 100,
		xp: 0,
		level: 1,
	}
	
	global.base = {
		hp: global.player.hp,
		attack: global.player.attack,
		defense: global.player.defense,
		dodge: global.player.dodge,
	}
	
	global.modifier = {
		hp: 0,
		attack: 0,
		defense: 0,
		dodge: 0.0,
	}
	
	global.multiplier = {
		hp: 1.0,
		attack: 1.0,
		defense: 1.0,
		dodge: 1.0,
	}
	
	global.damageCounter = 0
}