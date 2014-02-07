goog.provide 'wzk.ui.CloseIconRenderer'

goog.require 'wzk.ui.ComponentRenderer'

class wzk.ui.CloseIconRenderer extends wzk.ui.ComponentRenderer

  ###*
    @constructor
    @extends {wzk.ui.ComponentRenderer}
  ###
  constructor: ->

  ###*
    @override
  ###
  createDom: (icon) ->
    icon.getDomHelper().el 'button', {'class': 'goog-icon-remove close'}, '×'

goog.addSingletonGetter wzk.ui.CloseIconRenderer
