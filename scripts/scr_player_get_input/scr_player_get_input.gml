// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_get_input(){
	buttonBasicAttackPressed = keyboard_check_pressed(ord("Q"))
	buttonAbilityPlayer1Pressed = keyboard_check_pressed(ord("W"))
	buttonAbilityPlayer2Pressed = keyboard_check_pressed(ord("E"))
	buttonAbilityPlayer3Pressed = keyboard_check_pressed(ord("R"))
	buttonBasicDefensePressed = keyboard_check_pressed(ord("A"))
	buttonAbilityWild1Pressed = keyboard_check_pressed(ord("S"))
	buttonAbilityWild2Pressed = keyboard_check_pressed(ord("D"))
	buttonAbilityWild3Pressed = keyboard_check_pressed(ord("F"))
}