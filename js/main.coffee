---
---
retrieveLang = (lang, cb) ->
	url = baseUrl + '/lang/' + lang + '.json'
	try
		xhr = new window.XMLHttpRequest()
		xhr.open('GET', url)
		xhr.timeout = 30
		xhr.send()
		xhr.onreadystatechange = ->
			if xhr.readyState == 4
				cb null, JSON.parse xhr.responseText
	catch
		cb

loadLanguage = (lang) ->
	if lang == undefined
		lang = 'en'

	retrieveLang lang, (err, data) ->
		phrases = data
		targets = document.querySelectorAll('[data-translate]')
		for target in targets
			key = target.getAttribute('data-translate')
			if phrases[key] != undefined
				value = phrases[key]

			target.innerHTML = value || 'undefined'

		document.getElementsByClassName('home')[0].classList.remove 'hidden'
		document.getElementsByClassName('loading')[0].classList.add 'hidden'
	return

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
	loadLanguage()
	for el in document.querySelectorAll '.flag-list input'
		el.addEventListener 'click', recalculate

	for el in document.querySelectorAll '[data-lang]'
		el.addEventListener 'click', () ->
			loadLanguage this.getAttribute('data-lang')

	document.getElementById('flag').addEventListener 'input', parse
	return

recalculate()
