---
---
pow2 = (exp) ->
	base = 1
	base *= 2 while exp-- > 0
	base

parse = ->
	flags = document.querySelectorAll('.flag-list input')
	max = pow2 flags.length + 1
	newValue = parseInt document.getElementById('flag').value, 10

	if !newValue
		return

	for flag in [flags.length - 1..0]
		pow = pow2 flag
		if newValue >= pow
			flags[flag].checked = true
			newValue -= pow
		else
			flags[flag].checked = false

	return

recalculate = ->
	val = 0
	for el in document.querySelectorAll '.flag-list input'
		val += pow2 el.getAttribute 'value' if el.checked
	document.getElementById('flag').value = val
	return
  

document.addEventListener 'DOMContentLoaded', ->
	for el in document.querySelectorAll '.flag-list input'
		el.addEventListener 'click', recalculate

	document.getElementById('flag').addEventListener 'input', parse
	return

recalculate()
