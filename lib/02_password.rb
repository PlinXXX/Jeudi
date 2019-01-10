
	#Sign up
	def sign_up
		puts "Inittialisez et retenez bien votre mot de passe:"
		print "> "
		realmdp = gets.chomp
		puts "PASSWORD SAVED!\n\n"
		return realmdp
	end

	#login
		def login
			mdp = ""
			realmdp = sign_up
		while mdp != realmdp
			puts "ENTER YOUR PASSWORD:"
			mdp = gets.chomp.to_s
			puts "PASSWORD DENIED!" if mdp != realmdp
		end
		puts "PASSWORD ACCEPTED!\n\n"
		end

	#welcome_screen
	def welcome_screen
		puts "Welcome, you're now allowed to access our informations \n you'll find all informations about the suspect here https://github.com/PlinXXX/Jeudi "
	end
	
	
def perform
	login
	welcome_screen
end
perform