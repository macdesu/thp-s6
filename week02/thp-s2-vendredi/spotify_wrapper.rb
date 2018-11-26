#!/usr/bin/ruby
require "dotenv/load"
require "base64"
require "httparty"

def encoding(id, secret)
	return Base64.strict_encode64(id + ":" + secret)
end

def request_POST()
	request = HTTParty.post(
		url = "https://accounts.spotify.com/api/token",
		headers: {"Authorization" => "Basic " + encoding(ENV["C_ID"], ENV["C_S"])},
		body: {"grant_type" => "client_credentials"}
	)
	return request["access_token"]
end

def new_releases_GET()
	request = HTTParty.get(
		url = "https://api.spotify.com/v1/browse/new-releases?limit=2",
		headers: {
			"Content-Type" => 'application/json',
			"Accept" => 'application/json',
			"Authorization" => "Bearer " + @access_token}
	)
end

def request_artists_albums(artist_id)
	request = HTTParty.get(
		url = "https://api.spotify.com/v1/artists/#{artist_id}/albums",
		headers: {
			"Authorization" => "Bearer " + @access_token}
	)
end

@access_token = request_POST()
puts new_releases_GET()
# puts request_artists_albums("7GRrLcUxwtQLvOpO7OHO80") # Psychedelic Porn Crumpets, because they are fucking awesome