class BackboneApp
  constructor: () ->
    @events = _.extend({}, Backbone.Events)
    @router

  start: ->
    Backbone.history.start({ pushState: true })
    @events.trigger('start','')

  template: (name, context) ->
    JST["app/templates/#{name}"] context

@app = new BackboneApp()

Router = Backbone.Router.extend
  routes:
    "":"index"

  index: () ->
    app.events.trigger('route.index',this);

@app.router = new Router()






