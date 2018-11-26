#!/usr/bin/ruby

require "nokogiri"
require "open-uri"

class StartScrap
    def initialize
        save(perform("https://coinmarketcap.com/all/views/all/"))
    end

    def perform(url)
        all_prices = Array.new
        table = Hash.new
        website = Nokogiri::HTML(open(url))
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

    def save(hash)
        hash.each do | crypto |
            Currency.create(currency_name: crypto[0], currency_price: crypto[1])
        end
    end
end