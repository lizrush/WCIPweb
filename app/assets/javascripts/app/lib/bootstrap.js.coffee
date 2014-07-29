class App.Bootstrap
  @run: ->
    App.LayoutBootstrap.run()
    App.globalMenu = new App.GlobalMenu()
    new App.AjaxErrorController()
    new App.CarouselObserver()
    new App.FocusManager()
    new App.OpenableElementObserver()
    new App.ScrollLinkController()
    new App.SocialLinkController()
    Spine.Route.setup()
    $('.loader-container').hide()
