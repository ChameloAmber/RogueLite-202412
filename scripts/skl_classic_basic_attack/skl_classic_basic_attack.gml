// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function skl_classic_basic_attack_on_acquire(_slot){
	
}

function skl_classic_basic_attack_on_remove(_slot){
	
}

function skl_classic_basic_attack_on_fight_start(_slot){
	// Ready the skill
	global.skills[? _slot].charge.current = 1
}

function skl_classic_basic_attack_on_wave_start(_slot){
	
}

function skl_classic_basic_attack_activate(_slot){
	global.damageCounter += 5
}

function skl_classic_basic_attack_toggle_on(_slot){
	
}

function skl_classic_basic_attack_toggle_off(_slot){
	
}

function skl_classic_basic_attack_on_charge_get(_slot){
		
}