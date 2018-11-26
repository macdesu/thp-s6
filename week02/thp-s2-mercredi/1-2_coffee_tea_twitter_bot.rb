#!/usr/bin/ruby
require 'dotenv/load'
require 'twitter'

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = ENV["CONSUMER_K"]
  config.consumer_secret     = ENV["CONSUMER_SK"]
  config.access_token        = ENV["ACCESS_T"]
  config.access_token_secret = ENV["ACCESS_TS"]
end

topics = ["coffee", "tea"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end