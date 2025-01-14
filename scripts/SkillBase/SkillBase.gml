// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SkillBase(_codeName, _type, _cooldown, _chargesMax, _displaySprite = spr_skl_template) constructor{
	codeName = _codeName
	type = _type // activate, passive, toggle, charges
	cooldown = _cooldown
	chargesMax = _chargesMax
	onAcquired = asset_get_index(string("skl_{0}_on_acquire", _codeName))
	onFightStart = asset_get_index(string("skl_{0}_on_fight_start", _codeName))
	onActivate = asset_get_index(string("skl_{0}_activate", _codeName))
	onToggleOn = asset_get_index(string("skl_{0}_toggle_on", _codeName))
	onToggleOff = asset_get_index(string("skl_{0}_toggle_off", _codeName))
	displaySprite = _displaySprite
}