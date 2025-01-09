/// @description Insert description here
// You can write your code in this editor
if !toggle {
	x+=10
	if x >= 1366-80 {
		toggle = true	
	}
} else {
	x-=10
	if x <= 0 {
		toggle = false	
	}
}