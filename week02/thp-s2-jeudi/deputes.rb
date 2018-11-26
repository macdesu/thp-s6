#!/usr/bin/ruby

require "nokogiri"
require "open-uri"

def get_email(url)
	infos = Array.new(2)
	page = Nokogiri::HTML(open(url))
	infos[1] = page.css("#b1 > ul:nth-child(4) > li:nth-child(1) > ul > li:nth-child(1) > a").text.gsub("mailto:", "")
	return infos
end

def search_deputees
	deputes = Hash.new
	website = "https://www.nosdeputes.fr/deputes"
	page = Nokogiri::HTML(open(website))
	i = 0
	all_deputes = page.css("span.list_nom").text
	return all_deputes
end

print search_deputees
# print get_email("https://www.nosdeputes.fr/damien-abad")