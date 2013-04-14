require "cache/backend/inmemory/version"

module Cache
  module Backend
    class Inmemory
      def initialize
        @cache = Hash.new
      end

      def get(key)
        @cache[key]
      end

      def set(key, value)
        @cache[key] = value
      end
    end
  end
end