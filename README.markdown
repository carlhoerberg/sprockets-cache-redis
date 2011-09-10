Sprockets Redis Cache
====================

A cache store for Sprockets which utilities Redis. 

Usage
-----

    require 'sprocket-cache-redis'
    env = Sprockets::Environment.new
    env.cache = Sprockets::Cache::RedisStore.new(redis, 'sprockets')
    ...

Where the first argument is a Redis connection, and the other is a key_prefix.


