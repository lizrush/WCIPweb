class App.Pages.About extends App.PageController
  constructor: ->
    super
    @pageTitle = 'About WCIP.in'

    data = 'hello'

    @render('about', data)
