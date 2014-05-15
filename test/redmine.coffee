should  = (require 'chai').should()
moment  = require 'moment'
Redmine = require '../lib/redmine'

describe 'Redmine Class', ->
  redmine = Redmine.configure(
    host : "hoge"
    key  : "fuga"
  )
  it 'should return throw. opts require key host.', ->
    (->
      Redmine.configure( hoge : "fuga" )
    ).should.throw(Error)

  it 'should return throw. opts require key key.', ->
    (->
      Redmine.configure( host : "fuga" )
    ).should.throw(Error)

  it 'should return Redmine Object.', ->
      redmine = Redmine.configure(
        host : "hoge"
        key  : "fuga"
      )
      redmine.should.to.equal(Redmine)

  it 'should return array', ->
      redmine = Redmine.configure(
        host : "hoge"
        key  : "fuga"
      )
      res = redmine.issusByCreatedOn 10, moment()
      res.should.to.be.a("array")
