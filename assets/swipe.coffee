$(document).on "pageinit", (event) ->
  $("div.ui-page").on "swipeleft", (event)->
    slide event, {page: $(this).next("div[data-role=\"page\"]"), reverse: false}
    	
  $("div.ui-page").on "swiperight", (event)->
    slide event, {page: $(this).prev("div[data-role=\"page\"]"), reverse: true}

  slide = (event, options) ->
  	page = options.page
  	event.stopImmediatePropagation()
  	if page.length > 0
  		$.mobile.changePage page, {transition: "slide", reverse: options.reverse}
