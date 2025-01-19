// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SkillBase(_codeName, _type, _useCooldown, _cooldown, _useCharge, _maxCharge, _displaySprite) constructor{
	
	// Basics
	codeName = _codeName
	type = _type					// auto, activate, passive, toggle
	useCooldown = _useCooldown
	cooldown = _cooldown
	useCharge = _useCharge
	maxCharge = _maxCharge 
	
	// Scripts
	onAcquired = asset_get_index(string("skl_{0}_on_acquire", _codeName))
	onRemoved = asset_get_index(string("skl_{0}_on_remove", _codeName))
	onFightStart = asset_get_index(string("skl_{0}_on_fight_start", _codeName))
	onActivate = asset_get_index(string("skl_{0}_activate", _codeName))
	onToggleOn = asset_get_index(string("skl_{0}_toggle_on", _codeName))
	onToggleOff = asset_get_index(string("skl_{0}_toggle_off", _codeName))
	onChargeGet = asset_get_index(string("skl_{0}_charge_get", _codeName))
	
	// Displays
	displaySprite = _displaySprite
}