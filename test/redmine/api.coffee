should  = (require 'chai').should()
Api = require '../../lib/redmine/api'

describe 'Redmine::Api Class', ->
  api = new Api()

  it 'should return Object', ->
    api.options({}).should.to.be.a 'object'

  it 'should return Object', ->
    api.options
      host : 'host'
      key  : 'key'
    api.init()
