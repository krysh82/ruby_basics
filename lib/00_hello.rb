#programme salutation
def say_hello (first_name)
	puts "Bonjour, #{first_name}"
end

def ask_first_name #demande du nom du user
  puts "Quel est ton prénom ?"
  print "> "
  first_name = gets.chomp #recup via ce champ
  return first_name 
end

def combo
	first_name = ask_first_name
	say_hello(first_name)
end
combo
