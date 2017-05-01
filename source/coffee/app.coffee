$ = require 'jquery'

queue = $(document.body).attr('class').split ' '

actions =
  before: require 'init/before'
  after: require 'init/after'
  common: require 'init/common'
  index: require 'init/index'

actions.before()
actions.common()

for action in queue
  actions[action]?.call()

actions.after()
