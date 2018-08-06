$ ->
  $(document).click (e) ->
    if e.target.className != "popular-button" and $(e.target).parents(".popular-button").length == 0 and e.target.className != "filter"
      $(".popular-menu").hide()

    if e.target.className != "user-menu-button" and $(e.target).parents(".user-menu-button").length == 0
      $(".main-user-dropdown-menu").hide()

    if e.target.className != "country-selector" and $(e.target).parents(".country-selector").length == 0
      $(".countries-menu").css({ visibility: "hidden" })

    if e.target.className != "sort" and $(e.target).parents(".sort").length == 0
      $(".trends-menu").css({ visibility: "hidden" })

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

  $(".country-selector").click (e) ->
    e.preventDefault()
    countrySelectorOffset = $(".country-selector-label").offset()
    left = countrySelectorOffset.left
    top = countrySelectorOffset.top + 25
    $(".countries-menu").offset({top: top, left: left})

    if ($(".countries-menu").css("visibility") == "hidden")
      $(".countries-menu").css({ visibility: "visible" })
    else
      $(".countries-menu").css({ visibility: "hidden" })

  $(".sort").click (e) ->
    e.preventDefault()
    countrySelectorOffset = $(".sort-hot-menu-icon").offset()
    left = countrySelectorOffset.left
    top = countrySelectorOffset.top + 25
    $(".trends-menu").offset({top: top, left: left})

    if ($(".trends-menu").css("visibility") == "hidden")
      $(".trends-menu").css({ visibility: "visible" })
    else
      $(".trends-menu").css({ visibility: "hidden" })

  $("#view-card-menu").click (e) ->
    e.preventDefault()

    if $("#view-card-selected").length > 0
      $(".mainbar-container").css({ width: "648px" })
      $("#view-card-unselected, #view-classic-selected, #view-compact-selected").hide()
      $("#view-card-selected, #view-classic-unselected, #view-compact-unselected").show()

  $("#view-classic-menu").click (e) ->
    e.preventDefault()

    if $("#view-classic-selected").length > 0
      $(".mainbar-container").css({ width: "100%" })
      $("#view-card-selected, #view-classic-unselected, #view-compact-selected").hide()
      $("#view-card-unselected, #view-classic-selected, #view-compact-unselected").show()

  $("#view-compact-menu").click (e) ->
    e.preventDefault()

    if $("#view-compact-selected").length > 0
      $(".mainbar-container").css({ width: "100%" })
      $("#view-card-selected, #view-classic-selected, #view-compact-unselected").hide()
      $("#view-card-unselected, #view-classic-unselected, #view-compact-selected").show()
