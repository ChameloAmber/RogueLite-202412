/// @description Insert description here
// You can write your code in this editor
draw_text(40, 460, string("Player"))
draw_text(40, 480, string("Health: {0}/{1}", scr_player_get_variable("player-health-current"), scr_player_get_variable("player-health-max")))
draw_text(40, 500, string("Attack: {0}", scr_player_get_variable("player-attack")))
draw_text(40, 520, string("Defense: {0}", scr_player_get_variable("player-defense")))
draw_text(40, 540, string("Dodge: {0}", scr_player_get_variable("player-dodge")))