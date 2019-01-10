
def ask_first_name
		puts"Entrez votre prenom:"
		print"> "
		first_name = gets.chomp
  		puts "Bonjour, #{first_name}!"
end
ask_first_name