class Steps
  constructor: (@div) ->
    @steps = $(".step", @div).map((i,e) =>
      new Step(this, e)
    )
    @currentIdx = 0 
    @_setupActions()
    @_toggleButtons()
    return
      
  stepDirection: (sign) ->
    targIdx = @currentIdx + sign
    
    if((targIdx < 0) || (targIdx > @steps.length-1))
      throw "can't step that far"
      
    @steps[@currentIdx].hide()
    @steps[targIdx].show()
    @currentIdx = targIdx
    @_toggleButtons()
  
  _toggleButtons: ->
    @actions.prev.prop('disabled', @currentIdx == 0)
    @actions.next.prop('disabled', @currentIdx == @steps.length-1)
    
  _setupActions: ->
    @actions =
      prev: $("[data-prev]", @div)
      next: $("[data-next]", @div)
    @actions.prev.on "click", =>
      @stepDirection(-1)
    @actions.next.on "click", =>
      @stepDirection(1)    
    
class Step
  constructor: (@parent, el) ->
    @el = $(el)
  hide: ->
    @el.hide()
  show: ->
    @el.show()
