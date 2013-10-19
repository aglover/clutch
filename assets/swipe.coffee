$(document).on "pageinit", (event) ->
  $("div.ui-page").on "swipeleft", ->
    nextpage = $(this).next("div[data-role=\"page\"]")
    if nextpage.length > 0
    	$.mobile.changePage(nextpage, {transition: "slide", reverse: false})
    	event.stopImmediatePropagation

  $("div.ui-page").on "swiperight", ->
    prevpage = $(this).prev("div[data-role=\"page\"]")
    if prevpage.length > 0
      $.mobile.changePage(prevpage, {transition: "slide", reverse: true})
      event.stopImmediatePropagation