should  = (require 'chai').should()
ApiIssues = require '../../../lib/redmine/api/issues'

describe 'Redmine::Api::Issues Class', ->
  issues = new ApiIssues()

  it 'should return ApiIssues', ->

