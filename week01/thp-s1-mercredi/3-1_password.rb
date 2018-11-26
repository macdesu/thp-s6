#!/usr/bin/ruby

def define_password
	print "Veuillez entrer votre mot de passe\n> "
	@password = gets.chomp
end

def password_verification
	print "Confirmation\n> "
	if (gets.chomp == @password)
		return true
	else
		return false
	end
end

def perform
	define_password
	password_verification
end

perform