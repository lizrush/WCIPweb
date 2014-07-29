class App.PageBuilder
  @build: (controllerConstructor, params) ->
    if app.currentPageController
      app.currentPageController.release()

    container = $('<div class="page-container"></div>')
    app.el.html container
    app.currentPageController = new controllerConstructor({el: container, params: params})
    app.currentPageController.scrollToCorrectLocation()

    App.trigger 'pageBuilt'
