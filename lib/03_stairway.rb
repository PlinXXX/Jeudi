def full_pyramide(depl)
	etage = 10	
	x = []
	#compteur de boucles
	i = 1
	#incrementation de espace
	spc = etage
	a = 1
	position = depl
	while i <= etage	
		if i == position 
			x << ((' ' * (spc-1))+("P")+("#" * a ))
		else	
			x << ((' ' * (spc))+("#" * a ))
		end	
		i += 1	
		spc -= 1	
		a += 2
	end
	puts x
end	

def lancer 
	de = rand(1..6)
	puts "::#{de}"
	return de
end 

def action
	partie = 0
	win = 0
	r = "Y"
	while r != 'Q'

		depl = 10
		while depl > 0 
			puts " (Tap any key)Lancer le dé (Q) Quitter"
			print "> " 
			rep = gets.chomp.upcase
			de = lancer
			break if rep == 'Q'
			if de == 5 || de == 6
			depl -= 1 
			puts full_pyramide(depl) 
			puts "Vous avez avancé d'une marche"  
			elsif de == 1 
			if depl < 10 	
				depl+=1 
				puts full_pyramide(depl) 
				puts"Vous etes descendu d'une marche" 
			else
		 		full_pyramide(depl) 
			end 
			elsif de == 2 || de == 3 || de == 4	 	
				full_pyramide(depl) 	
				puts "Vous n'avez pas bougé"
			end
			puts "Vous vous trouvez sur la position #{10 - depl}"
			partie += 1
		end
		if depl == 0
		win+=1
		puts "Vous avez lancer le de #{partie} fois et avez remporte #{win} victoire(s)"	
		puts "-------------------"	
		puts " Vous-avez gagné!!"	
		puts "-------------------"
		end

		puts " (Any key)Rejouer \n (Q)Quitter"
		print "> "
		r = gets.chomp.upcase
	end
end

puts " 1. Afficher une pyramide \n 2. Lancer un dé \n 3. Jouer"
print "> "
choix = gets.chomp.to_i
if choix == 1
	default = ''
	depl = default
	full_pyramide(depl)
elsif choix == 2
	lancer
elsif choix == 3
	action
else
	puts "Veuillez choisir l'un de ces chiffres!"	
end
	
