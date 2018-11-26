require 'twitter'
require 'test_hash'
require 'dotenv'
require '.././db/emails.json'
Dotenv.load
=begin
class Bot_twitter
    # quelques lignes qui enregistrent les clés d'APIs
    @client = Twitter::Streaming::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_API_KEY"]
    config.consumer_secret     = ENV["TWITTER_API_SECRET"]
    config.access_token        = ENV["YOUR_ACCESS_TOKEN"]
    config.access_token_secret = ENV["YOUR_ACCESS_SECRET"]
    end

    # ligne qui permet de rellever tout les tweets qui mentionnent 'coffee' ou 'tea'
    def tea_coffe(topics)
    @client.filter(track: topics.join(",")) do |object|
        puts object.text if object.is_a?(Twitter::Tweet)
    end
    end
    tea_coffe(["coffee", "tea"])%  
end  
=begin
#--------------------------------------------------------------------------------------
# fonctionnalités avec l'API de twitter
#--------------------------------------------------------------------------------------

#client.update('My name is Boaz') # Phrase tweet
#client.follow("alone_dw") #follow (faire ça en boucle sur tableau journalistes)
#puts client.users("alone_dw") ?
#puts client.user_timeline("alone_dw") retourne 4 ID twitter
#puts client.followers("alone_dw")  # retourne l'ID d'1 followers
#puts client.friends("alone_dw") # retourne l'idée d'un ... amis ?
#puts client.user("alone_dw") # retourne l'ID de Malonne #<Twitter::User:0x00007fa4ebbae9f0>
#--------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------
