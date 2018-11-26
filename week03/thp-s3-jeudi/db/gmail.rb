require 'google/apis/gmail_v1'
require 'googleauth'
require 'googleauth/stores/file_token_store'
require 'fileutils'
require 'gmail'
require 'dotenv'

<<<<<<< HEAD

email_json = File.read('emails.json') 
i = 0
y = 0
j = 0
u = 0
email_add = []
while i < email_json.size
		while email_json[i] !=	"@" && i < email_json.size
			i += 1
		end
		y = i
		while email_json[y] !=	"\"" && i 
			y -= 1
		end
		j = i
		while email_json[j] !=	"\"" && i < email_json.size
			j += 1
		end
		if i < email_json.size
			email_add[u] = email_json[y + 1..j - 1]
		end
		u += 1
		i += 1
end

=======
gmail = Gmail.connect("llaehthp@gmail.com","")

gmail.deliver do
  to "lisa.lou.aeh@gmail.com"
  subject "test2 email thp"
  text_part do
    body "hein, c'est fun, n'est-ce pas?"
  end
>>>>>>> 8b8de6dbd7f6b933554fc2a8fcd28c374a187176
end

gmail = Gmail.connect("thehackingproject11@gmail.com","azertyuio123")
while i < email.size
	gmail.deliver do
	  to email_add[i]
	  subject "Haha je sais cotfghnj,nbuvgyftrcdxcvbn,mment spammer!"
	  text_part do
	    body "hein, c'est fun, n'est-ce pas?"
	  end
	end
	i += 1
end

