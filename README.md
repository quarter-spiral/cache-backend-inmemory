# Cache::Backend::Inmemory

A backend for the Quarter Spiral ``cache-client`` gem using an in memory store.

## Setup

Require this gem and the ``cache-client`` gem e.g. in your Gemfile:

```ruby
gem 'cache-client'
gem 'cache/backend/inmemory'
```

Then use it like this:

```ruby
cache_client = Cache::Client.new(Cache::Backend::Inmemory)
cache_client.set(['some', 'key'], 123)
cache_client.get(['some', 'key']) # => 123
```