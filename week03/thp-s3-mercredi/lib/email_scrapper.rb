#!/usr/bin/ruby
require "open-uri"
require "nokogiri"

class Scrapper
	public
	def initialize(html_page, path, zipcode)
		@html_page = html_page
		@path = path
		@email_list = Array.new
		@zipcode = zip_to_regex(String(zipcode))
	end

	# This is, of course, completely useless...
	def fetch_dem_in_di_ass
		get_townhalls_url
	end

	private
	def zip_to_regex(zipcode)
		return @zipcode = Regexp.new(zipcode)
	end

	def get_townhalls_url
		page = Nokogiri::HTML(open(@html_page))
		page.xpath("//@href").grep(@zipcode).each do |link|
			link = link.to_s
			@email_list.push(get_email_webpage(link.gsub("./", "http://annuaire-des-mairies.com/")))
			system("clear") && puts(@html_page + "\nFetching emails...\n" + link)
		end
		system("clear") && (puts "...DONE !")
		return @email_list
	end

	def get_email_webpage(url)
		page = Nokogiri::HTML(open(url))
		return page.xpath(@path).text
	end
end