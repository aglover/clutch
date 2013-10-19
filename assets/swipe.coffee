$(document).on "pageinit", (event) ->
  $("div.ui-page").on "swipeleft", (event)->
    nextpage = $(this).next("div[data-role=\"page\"]")
    event.stopImmediatePropagation()
    event.stopPropagation()
    console.log "swipeleft invoked, nextpage is #{nextpage['data-url']}"
    if nextpage.length > 0
    	$.mobile.changePage(nextpage, {transition: "slide", reverse: false})
    	
  $("div.ui-page").on "swiperight", (event)->
    prevpage = $(this).prev("div[data-role=\"page\"]")
    event.stopImmediatePropagation()
    event.stopPropagation()
    console.log "swiperight invoked, prevpage is #{prevpage}"
    if prevpage.length > 0
      $.mobile.changePage(prevpage, {transition: "slide", reverse: true})