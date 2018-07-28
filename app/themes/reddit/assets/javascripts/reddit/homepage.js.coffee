$ ->
  $(document).click (e) ->
    if e.target.className != "popular-button" and $(e.target).parents(".popular-button").length == 0
      $(".popular-menu").hide()

    if e.target.className != "user-menu-button" and $(e.target).parents(".user-menu-button").length == 0
      $(".main-user-dropdown-menu").hide()

  $(".popular-button").click (e) ->
    e.preventDefault()
    $(".popular-menu").toggle()

  $(".filter").click (e) ->
    e.preventDefault()

  $(".popular-links").click (e) ->
    e.preventDefault()

  $(".user-menu-button").click (e) ->
    e.preventDefault()
    $(".main-user-dropdown-menu").toggle()
