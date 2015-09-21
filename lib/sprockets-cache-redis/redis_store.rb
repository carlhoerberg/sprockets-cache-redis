module Sprockets
  class Cache
    # A simple Redis cache store.
    #
    #     environment.cache = Sprockets::Cache::RedisStore.new($redis)
    #
    class RedisStore
      def initialize(redis_conn, key_prefix = 'sprockets')
        @redis = redis_conn
        @key_prefix = key_prefix
      end

      # Lookup value in cache
      def [](key)
        data = @redis.get path_for(key)
        Marshal.load data if data
      end

      # Save value to cache
      def []=(key, value)
        @redis.set path_for(key), Marshal.dump(value)
        value
      end

      private 
      def path_for(key)
        "#{@key_prefix}:#{key}"
      end
    end
  end
end
