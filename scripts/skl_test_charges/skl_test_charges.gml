// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function skl_test_charges_on_acquire(){
	
}

function skl_test_charges_on_fight_start(){
	
}

function skl_test_charges_activate(_slot){
	global.damageCounter += global.skills[? _slot].charges * 3
	global.skills[? _slot].charges = 0
}

function skl_test_charges_toggle_on(){
	
}

function skl_test_charges_toggle_off(){
	
}