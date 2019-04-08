#= require twbs/bootstrap/collapse.js
#= require twbs/bootstrap/dropdown.js
#= require twbs/bootstrap/transition.js
#= require_tree .

$(document).on 'click', '.navbar-collapse.in', (e) ->
  if $(e.target).is('a')
    $(this).collapse 'hide'

$(document).on 'click', '.scrollto-j', (e) ->
  e.preventDefault()
  $([document.documentElement, document.body]).animate(
    scrollTop: $($(this).attr('href')).offset().top
  , 250, 'swing')
