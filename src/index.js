import defaults from 'lodash.defaults'
import Promise from 'bluebird'
import Redis from 'redis'



let redis = Promise.promisifyAll(Redis)
let defaultConfig = {
  host: '127.0.0.1',
  port: 6379,
  index: null,
  password: null
}



export default function createClient (customConfig = {}) {

  let {
    port,
    host,
    password,
    index
  } = defaults(customConfig, defaultConfig)

  let client = redis.createClient(port, host)
  if (password) client.auth(password, function noop(){})
  if (index) client.select(index)

  return client
}


