#!/usr/bin/ruby

require "nokogiri"
require "open-uri"

def watch_cryptos
    all_prices = Array.new
    table = Hash.new
    website = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    all_prices = website.css("a.price").text.split("$")
    website.css("a.currency-name-container").each do |name|
        table.store(name.text.to_sym, nil)
    end
    i = 1
    table.keys.map do | currency |
        table[currency] = all_prices[i]
        i += 1
    end
    return table
end

print watch_cryptos()
