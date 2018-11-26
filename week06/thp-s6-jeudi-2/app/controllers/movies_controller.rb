class MoviesController < ApplicationController
	def index
	end

	def search
		a = Array.new
		a = SearchMovie.new.search(params[:movie])
		puts a.empty?
		puts a[1..20]
	end
end
