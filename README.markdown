Sprockets Redis Cache
====================

A cache store for Sprockets which utilities Redis. 

Usage
-----

Gemfile:

    gem 'sprockets'
    gem 'sprockets-cache-redis'
    ...

config.ru:

    require 'sprockets-cache-redis'
    env = Sprockets::Environment.new
    env.cache = Sprockets::Cache::RedisStore.new(redis, 'sprockets')
    ...

Where the first argument is a Redis connection, and the other (which is optional) is a key_prefix.

License
-------
(MIT license)

Copyright (C) 2011 by Carl Hörberg

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

