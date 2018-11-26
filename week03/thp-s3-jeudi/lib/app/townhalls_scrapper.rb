#!/usr/bin/ruby
require "open-uri"
require "nokogiri"
require "json"
# require "csv"

class Scrapper
	public
	def initialize(html_page, path, zipcode)
		@html_page = html_page
		@path = path
		@zipcode = zip_to_regex(String(zipcode)) # Transforme le code en string dans tous les cas
	end

	# Launcher
	def start
		get_townhalls_url
	end

	private
	# Transcrit un code postal (string ou int) vers une regex
	def zip_to_regex(zipcode)
		return @zipcode = Regexp.new(zipcode)
	end

	# Recupere les URL de chaque mairie et appelle get_email_webpage pour chacune d'entre elle
	def get_townhalls_url
		email_list = Hash.new
		b = Array.new
		page = Nokogiri::HTML(open(@html_page))
		puts(@html_page + "\nFetching emails...")
		page.xpath("//@href").grep(@zipcode).each do | link |
			print '.'
			link = link.to_s
			b = get_email_webpage(link.gsub("./", "http://annuaire-des-mairies.com/"))
			email_list[b[0]] = Hash[b[0] => [b[1], b[2]]]
		end
		puts "...DONE !"
		return email_list
	end

	# Recupere NOM/CODE POSTAL/EMAIL sur la page de la mairie
	def get_email_webpage(url)
		page = Nokogiri::HTML(open(url))
		email = page.xpath(@path).text
		town_name = page.xpath("/html/body/div/main/section[1]/div/div/div/h1").text.split(" - ")
		return [town_name[0], town_name[1], email]
	end
end

def scrapping
	xpath = "/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]"
	scrapper972 = Scrapper.new("http://www.annuaire-des-mairies.com/martinique.html", xpath, 972)
	scrapper34 = Scrapper.new("https://www.annuaire-des-mairies.com/herault.html", xpath, 34)
	scrapper30 = Scrapper.new("https://www.annuaire-des-mairies.com/gard.html", xpath, 30)
	
	json_martinique = scrapper972.start.to_json
	json_herault = scrapper34.start.to_json
	json_gard = scrapper30.start.to_json
	File.open("db/emails.json","w") do |f|
		f.write(json_martinique)
		f.write(json_gard)
		f.write(json_herault)
	end
	ruby_martinique = scrapper972.start
	ruby_heraut = scrapper34.start
	ruby_gard = scrapper30.start
	File.open("db/emails.rb","w") do |f|
		f.write(ruby_martinique)
		f.write(ruby_gard)
		f.write(ruby_heraut)
	end
end

scrapping