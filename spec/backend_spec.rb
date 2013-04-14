require_relative './spec_helper'

describe Cache::Backend::Inmemory do
  before do
    @client = Cache::Client.new(Cache::Backend::Inmemory)
    @key = ['some', 'key']
  end

  it "works" do
    @client.get(@key).must_be_nil
    @client.set(@key, 123).must_equal 123
    @client.get(@key).must_equal 123
    @client.fetch(@key) do
      456
    end.must_equal 123
    @client.get(@key).must_equal 123
    @client.set(@key, nil).must_be_nil
    @client.get(@key).must_be_nil
    @client.fetch(@key) do
      456
    end.must_equal 456
    @client.get(@key).must_equal 456
  end
end