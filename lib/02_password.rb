def signup
	puts "Veuillez définir un mot de passe : "
	print ">"
	password = gets.chomp
	return password
end

def login
	puts "Rentrez votre mot de passe"
	print ">"
	pwd = gets.chomp
	return pwd
end


def welcome_screen (password, pwd)
	while password != pwd
		puts "Mot de passe incorrect. ACCES INTERDIT !"
		print ">"
		pwd = login
	end
	puts "Bienvenue dans votre espace NASA TOP SECRET !"
		
end

def perform
	password = signup
	pwd = login
	welcome_screen(password, pwd)
end

perform


