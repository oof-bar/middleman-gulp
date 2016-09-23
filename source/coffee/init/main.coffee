$ = require 'cash-dom'

module.exports = ->
  queue = $(document.body).attr('class').split ' '

  actions =
    before: require './before'
    after: require './after'
    common: require './common'
    index: require './index'

  actions.before()
  actions.common()

  for action in queue
    actions[action]?.call()

  actions.after()
