---
---
update = ->
  val = bigInt 0
  two = bigInt 2
  els = document.querySelectorAll '.flag-list input'
  for el in els
    val = val.add two.pow el.getAttribute 'value' if el.checked
  document.querySelector('.page-heading strong').innerHTML = val.toString()
  return
  

document.addEventListener 'DOMContentLoaded', ->
  els = document.querySelectorAll '.flag-list input'
  for el in els
    el.addEventListener 'click', update
  update()
  return
  
