require "themoviedb"

class SearchMovie
	def search(movie)
		ar = Array.new
		Tmdb::Api.key(Rails.application.credentials.dig(:moviedb_key))
		Tmdb::Movie.find(movie).each do | a |
			ar << Tmdb::Movie.detail(a.id)
		end
		return [ar.first["id"], ar.first["title"], ar.first["release_date"]]
	end
end