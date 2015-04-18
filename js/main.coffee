---
---
pow2 = (exp) ->
	base = 1
	base *= 2 while exp-- > 0
	base

recalculate = ->
	val = 0
	for el in document.querySelectorAll '.flag-list input'
		val += pow2 el.getAttribute 'value' if el.checked
	document.querySelector('.page-heading strong').innerHTML = val
	return
  

document.addEventListener 'DOMContentLoaded', ->
	for el in document.querySelectorAll '.flag-list input'
		el.addEventListener 'click', recalculate
	return

recalculate()
