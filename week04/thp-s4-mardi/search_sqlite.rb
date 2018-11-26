#!/usr/bin/ruby
require 'sqlite3'

db = SQLite3::Database.new("./chinook.db")
# All albums
print db.execute("SELECT * FROM albums")
# All albums with "Great" in the title
print db.execute("SELECT * FROM albums WHERE Title LIKE '\%Great\%'")
# Tells how many albums are in the DB
print db.execute("SELECT Count(*) FROM albums")
# Deletes from DB all albums with "music" in the title
print db.execute("DELETE FROM albums WHERE Title LIKE '\%music\%'")
# Shows all AC/DC albums
print db.execute("SELECT * FROM albums WHERE ArtistId=1")
# Shows all AC/DC tracks
print db.execute("SELECT name FROM tracks WHERE AlbumId=1 OR AlbumId=4")
# Shows all tracks from their "Let There Be Rock" album
print db.execute("SELECT name FROM tracks WHERE AlbumId=4")
# It's price
prices = Array.new 
db.execute("SELECT UnitPrice FROM tracks WHERE AlbumId=4").each do | values |
	values.each do | v |
		prices << Float(v)
	end
end
print prices.sum