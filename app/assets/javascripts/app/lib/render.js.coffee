App.render = (viewPath, data) ->
  data ||= {}
  HandlebarsTemplates["app/views/#{viewPath}"](data)

App.renderPartial = (viewPath, data) ->
  data ||= {}
  Handlebars.partials["app/views/#{viewPath}"](data)
