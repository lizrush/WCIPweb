#= require json2
#= require jquery
#= require spine
#= require spine/manager
#= require spine/ajax
#= require spine/route

#= require_tree ./lib
#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views

class App extends Spine.Controller
  @extend(Spine.Events)

  constructor: ->
    super
    window.app = @
    new App.Router()
    new App.ResourceLoader().loadApp(App.Bootstrap.run)

window.App = App
