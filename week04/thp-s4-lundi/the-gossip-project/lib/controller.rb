require "gossip.rb"

class ApplicationController < Sinatra::Base
	get '/' do
		erb :index
	end

	get "/gossips/" do
		erb :all, locals: {gossips: Gossip.all}
	end

	get "/gossips/new/" do
		erb :new_gossip
	end

	get '/gossips/:id/' do
	  # The :id is passed through the URL,
	  # which is accessible in the params hash.
	  # Use it to assign a recipe to an instance variable
	  @gossip = Gossip.find(params[:id])
	  erb :each
end

	post "/gossips/new/" do
		Gossip.new(params.values.to_a).save
		redirect '/'
	end
end