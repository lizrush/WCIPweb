class App.FocusManager
  constructor: ->
    $('body').on 'focusin', (e) =>
      @oldFocus = e.target

    App.bind 'rendered', (e) =>
      return unless @oldFocus

      if @oldFocus.getAttribute('data-focus-id')
        @_focusById()
      else
        @_focusByNodeEquality()

  _focusById: ->
    focusId = @oldFocus.getAttribute('data-focus-id')
    newFocus = document.querySelector("[data-focus-id=#{focusId}]")
    Distiller.focus(newFocus) if newFocus

  _focusByNodeEquality: ->
    allNodes = $('body *:visible').get()
    for node in allNodes
      if Distiller.equalNodes(node, @oldFocus)
        Distiller.focus(node)
