/// @description Insert description here
// You can write your code in this editor
var _isReady = ""
if scr_player_get_variable("skill-player1-timer", true) >= scr_player_get_variable("skill-player1-cooldown", true) {
	_isReady = " - Ready!"
}
draw_text(x, y, string("Player Skill 1: {0}/{1}{2}", scr_player_get_variable("skill-player1-timer"), scr_player_get_variable("skill-player1-cooldown"), _isReady))