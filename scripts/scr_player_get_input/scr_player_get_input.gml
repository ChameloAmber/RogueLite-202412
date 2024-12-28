// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_get_input(){
	buttonAutoAttackPressed = keyboard_check_pressed(ord("R"))
	buttonAbilityPlayer1Pressed = keyboard_check_pressed(ord("Q"))
	buttonAbilityPlayer2Pressed = keyboard_check_pressed(ord("W"))
	buttonAbilityPlayer3Pressed = keyboard_check_pressed(ord("E"))
	buttonAbilityWild1Pressed = keyboard_check_pressed(ord("A"))
	buttonAbilityWild2Pressed = keyboard_check_pressed(ord("S"))
	buttonAbilityWild3Pressed = keyboard_check_pressed(ord("D"))
}