// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Skill(_codeName, _type, _cooldown, _chargesMax = -1) constructor{
	codeName = _codeName
	type = _type
	cooldown = _cooldown
	charges = 0
	chargesMax = _chargesMax
	onAcquired = asset_get_index(string("skl_{0}_on_acquire", _codeName))
	onFightStart = asset_get_index(string("skl_{0}_on_fight_start", _codeName))
	activate = asset_get_index(string("skl_{0}_activate", _codeName))
	toggleOn = asset_get_index(string("skl_{0}_toggle_on", _codeName))
	toggleOff = asset_get_index(string("skl_{0}_toggle_off", _codeName))
}