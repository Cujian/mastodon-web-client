$ ->
  $(document).click (e) ->
    if $(".popular-menu").length > 0
      $(".popular-menu").hide()


  $(".popular-button").click (e) ->
    e.preventDefault()
    e.stopPropagation()
    $(".popular-menu").toggle()

  $(".filter").click (e) ->
    e.preventDefault()
    e.stopPropagation()

  $(".popular-links").click (e) ->
    e.preventDefault()
    e.stopPropagation()
