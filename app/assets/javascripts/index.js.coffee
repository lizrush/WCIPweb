class App extends Spine.Controller
  @extend(Spine.Events)

  constructor: ->
    super
    window.app = @
    new App.Router()
    new App.ResourceLoader().loadApp(App.Bootstrap.run)

window.App = App
