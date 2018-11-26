require 'twitter'

class BotTwitter

    def initialize
        client = Twitter::REST::Client.new do |config|
          config.consumer_key        = Rails.application.credentials.TWITTER_API_KEY
          config.consumer_secret     = Rails.application.credentials.TWITTER_API_SECRET
          config.access_token        = Rails.application.credentials.YOUR_ACCESS_TOKEN
          config.access_token_secret = Rails.application.credentials.YOUR_ACCESS_SECRET
        end
        client = Twitter::Streaming::Client.new do |config|
          config.consumer_key        = Rails.application.credentials.TWITTER_API_KEY
          config.consumer_secret     = Rails.application.credentials.TWITTER_API_SECRET
          config.access_token        = Rails.application.credentials.YOUR_ACCESS_TOKEN
          config.access_token_secret = Rails.application.credentials.YOUR_ACCESS_SECRET
        end
    end

    def stream_and_contact
      topics = ["ruby", "rails", "code", "backend", "SEO"]
      # Pas besoin de faire un .each, il va streamer tout le tweets qui contienne un des mots du tableau
        client.filter(track: topics.join(",")) do |object|
          puts object.text if object.is_a?(Twitter::Tweet)
        end
    end

end



#client.update('My name is Boaz') # Phrase tweet
#client.follow("alone_dw") #follow (faire ça en boucle sur tableau journalistes)
#puts client.users("alone_dw") ?
#puts client.user_timeline("alone_dw") retourne 4 ID twitter
#puts client.followers("alone_dw")  # retourne l'ID d'1 followers
#puts client.friends("alone_dw") # retourne l'idée d'un ... amis ?
#puts client.user("alone_dw") # retourne l'ID de Malonne #<Twitter::User:0x00007fa4ebbae9f0>
