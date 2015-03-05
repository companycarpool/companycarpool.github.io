#= require twbs/bootstrap/transition.js
#= require twbs/bootstrap/collapse.js
#= require twbs/bootstrap/dropdown.js
#= require_tree .

$(document).on 'click', '.navbar-collapse.in', (e) ->
  if $(e.target).is('a')
    $(this).collapse 'hide'
