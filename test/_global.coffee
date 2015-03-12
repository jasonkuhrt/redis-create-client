require 'babel/register'
g = GLOBAL
g.a = require('chai').assert
g.Promise = require 'bluebird'
g.eq = a.deepEqual
g.Redis = require '../src'

