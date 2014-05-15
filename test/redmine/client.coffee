should  = (require 'chai').should()
moment  = require 'moment'
Client = require '../../lib/redmine/client'

describe 'Redmine::Client Class', ->
  client = new Client('host', 'key')

  it 'should return ApiIssues', ->
    issues = client.connection "issues", {}
    issues.should.to.be.a 'object'

