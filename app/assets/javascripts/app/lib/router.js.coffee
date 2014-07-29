class App.Router extends Spine.Controller
  constructor: ->
    @el = app.el
    @addRoute '', App.Pages.Home, "Home"
    @addRoute '/', App.Pages.Home, "Home"
    # See http://stackoverflow.com/questions/7131909/facebook-callback-appends-to-return-url
    @addRoute '_=_', App.Pages.Home, "Home"

    @addRoute @matchSlash('how-it-works'), App.Pages.Howitworks, "How It Works"
    @addRoute @matchSlash('about'), App.Pages.About, "About"
    @addRoute @matchSlash('styleguide'), App.Pages.StyleGuide, "Styleguide"

    @addRedirect @matchSlash('terms_of_service'), '/terms_of_service'
    @addRedirect @matchSlash('privacy_policy'), '/privacy_policy'

    @handleUnfoundRoutes()

    app.router = @

  matchSlash: (path) ->
    return new RegExp("\/#{path}(\/)?$")

  handleUnfoundRoutes: ->
    Spine.Route.add '*glob', ->
      WCIP.window().location = '/404'

  addRoute: (path, pageController, pageName) ->
    @setRoute path, pageController, pageName
    @setRoute "!#{path}", pageController, pageName if typeof path is 'string'

  setRoute: (path, pageController, pageName) ->
    Spine.Route.add path, (params) =>
      App.PageBuilder.build pageController, params

  addRedirect: (path, redirect_to) ->
    Spine.Route.add path, ->
      WCIP.window().location = redirect_to
