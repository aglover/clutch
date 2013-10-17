$(document).on "pageinit", (event) ->
  $("div.ui-page").on "swipeleft", ->
    console.log "swipe left"
    nextpage = $(this).next("div[data-role=\"page\"]")
    $.mobile.changePage(nextpage, { transition: "slide", reverse: false }, false, true) if nextpage.length > 0

  $("div.ui-page").on "swiperight", ->
    prevpage = $(this).prev("div[data-role=\"page\"]")
    if prevpage.length > 0
      $.mobile.changePage(prevpage, { transition: "slide", reverse: true }, true, true)