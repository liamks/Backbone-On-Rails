ExampleView = Backbone.View.extend
  render: () ->
    temp = app.template 'sample', {name:'world'}
    $("#main").append(temp);

class ExampleModule
  constructor: ->
    @eventHandlers()
    @exampleView = new ExampleView()

  eventHandlers: ->
    app.events.on 'start',() =>
      @exampleView.render()

new ExampleModule()