App.override = (eventName, selector, callback, preventDefault=true) ->
  $('body').on eventName, selector, (e) ->
    e.preventDefault() if preventDefault
    el = $(e.target).closest(selector)
    callback(el)
