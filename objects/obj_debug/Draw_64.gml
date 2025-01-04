/// @description Insert description here
// You can write your code in this editor
draw_text(10, 10, string("Timer: {0}/{1}", string_format(global.skills[? "autoAttack"].timer.current, 1, 1), string_format((global.skills[? "autoAttack"].timer.base * global.skills[? "autoAttack"].timer.multiplier) + global.skills[? "autoAttack"].timer.modifier, 1, 1)))
draw_text(10, 30, string("Damage: {0}", global.damageCounter))