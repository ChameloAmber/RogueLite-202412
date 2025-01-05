// Get input
scr_player_get_input()
scr_player_cooldown_ticker()

if scr_player_get_variable("skill-autoAttack-timer", true) >= scr_player_get_variable("skill-autoAttack-cooldown", true) {
	scr_skill_trigger("autoAttack")
}

if buttonAbilityPlayer1Pressed { scr_skill_trigger("player1") }
if buttonAbilityPlayer2Pressed { scr_skill_trigger("player2") }
if buttonAbilityPlayer3Pressed { scr_skill_trigger("player3") }
if buttonAbilityWild1Pressed { scr_skill_trigger("wild1") }
if buttonAbilityWild2Pressed { scr_skill_trigger("wild2") }
if buttonAbilityWild3Pressed { scr_skill_trigger("wild3") }