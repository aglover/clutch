$(document).on "pageinit", (event) ->
  $("div.ui-page").on "swipeleft", (event)->
    nextpage = $(this).next("div[data-role=\"page\"]")
    slide event, {page: nextpage, reverse: false}
    	
  $("div.ui-page").on "swiperight", (event)->
    prevpage = $(this).prev("div[data-role=\"page\"]")
    slide event, {page: prevpage, reverse: true}

  slide = (event, options) ->
  	page = options.page
  	event.stopImmediatePropagation()
  	if page.length > 0
  		$.mobile.changePage page, {transition: "slide", reverse: options.reverse}
