#!/usr/bin/ruby

require "open-uri"
require "nokogiri"

def get_all_the_urls_of_val_doise_townhalls
	website = "http://annuaire-des-mairies.com/val-d-oise.html"
	page = Nokogiri::HTML(open(website))
	email_list = Array.new
	page.xpath("//@href").grep(/95/).each do |link|
		link = link.to_s
		email_list.push(get_the_email_of_a_townhal_from_its_webpage(link.gsub("./", "http://annuaire-des-mairies.com/")))
		system("clear") && puts(website + "\nFetching emails...\n" + link)
	end
	system("clear") && (puts "...DONE !")
	return email_list
end

def get_the_email_of_a_townhal_from_its_webpage(url)
	page = Nokogiri::HTML(open(url))
	return page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text
end

puts get_all_the_urls_of_val_doise_townhalls()
