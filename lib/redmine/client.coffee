class Client
  constructor: (@host, @key) ->
  connection: (name, opts) ->
    switch name
      when "issues"
        api = new ApiIssue = require('../../lib/redmine/api/issues')

    api.options opts
    api.init()
    api
module.exports = Client
