Api = require '../../../lib/redmine/api'

class ApiIssues extends Api
  constructor: () ->
  getByCreatedOn : (project_id, date) ->
    []

module.exports = ApiIssues
