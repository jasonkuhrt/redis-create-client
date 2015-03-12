

describe 'redis-client', ->

  redis = undefined

  afterEach (done)->
    if !redis then return done()
    redis.quit()
    redis.once 'end', done
    redis = undefined


  it 'connects on instantiation', (done)->
    redis = Redis()
    redis.once 'ready', done

  it 'can be assigned an index to use', (done)->
    redis = Redis(index: 2)
    redis.once 'ready', done

  it 'can be assigned a password to use'

  it 'can be assigned a port to use'

  it 'is promisified with bluebird', ->
    redis = Redis()
    a.isFunction redis.hmsetAsync


