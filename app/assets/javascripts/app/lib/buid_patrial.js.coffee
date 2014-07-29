Handlebars.registerHelper 'buildPartial', (partial, context, additionalLocals={}) ->
  additionalLocals = JSON.parse(additionalLocals) if typeof(additionalLocals) == "string"

  partialContext = _.extend _.clone(context), additionalLocals
  App.renderPartial partial, partialContext
