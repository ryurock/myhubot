Client = require('../lib/redmine/client')

class Redmine

  _instance = null
  _client   = null

  @configure : (opts) ->
    throw Error "configure opts host must be required." unless opts.host?
    throw Error "configure opts key  must be required." unless opts.key?
    _client = new Client(opts.host, opts.key)
    @

  @issusByCreatedOn : (project_id, date) ->
    api = _client.connection "issues", project_id : project_id
    api.getByCreatedOn project_id, date

module.exports = Redmine
