require 'digest/md5'

module Sprockets
  module Cache
    class RedisStore
      def initialize(redis_conn, key_prefix = 'sprockets')
        @redis = redis_conn
        @key_prefix = key_prefix
      end

      def [](key)
        Marshal.load @redis.get(path_for(key))
      end

      def []=(key, value)
        @redis.set path_for(key), Marshal.dump(value)
      end

      private 
      def path_for(key)
        key_prefix + ':' + ::Digest::MD5.hexdigest(key)
      end
    end
  end
end
