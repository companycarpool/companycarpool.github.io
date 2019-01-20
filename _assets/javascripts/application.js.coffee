#= require twbs/bootstrap/collapse.js
#= require twbs/bootstrap/dropdown.js
#= require twbs/bootstrap/transition.js
#= require jquery.scrollTo.js
#= require_tree .

$(document).on 'click', '.navbar-collapse.in', (e) ->
  if $(e.target).is('a')
    $(this).collapse 'hide'

$(document).on 'click', '.scrollto-j', (e) ->
  e.preventDefault()
  $(document).scrollTo $($(this).attr('href')), 'ease'
