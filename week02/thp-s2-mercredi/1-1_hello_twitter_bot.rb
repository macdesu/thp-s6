#!/usr/bin/ruby
require 'dotenv/load'
require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["CONSUMER_K"]
  config.consumer_secret     = ENV["CONSUMER_SK"]
  config.access_token        = ENV["ACCESS_T"]
  config.access_token_secret = ENV["ACCESS_TS"]
end

client.update("Hello, World! #THP #TheHackingProject #Bot #Ruby")