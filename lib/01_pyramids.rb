def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">"
	etage = gets.chomp.to_i
	puts "Voici la pyramide :"
	for i in 1..etage
		diez = '#'*i
		espace = ' '*(etage-i)
		puts  "#{espace}#{diez}"
	end
end

def full_pyramide
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">"
	etage = gets.chomp.to_i
	puts "Voici la pyramide :"
	for i in 1..etage
		j = 2*i-1
		diez = '#'*j
		espace = ' '*(etage-i)
		puts  "#{espace}#{diez}"
	end
end

def wtf_pyramide
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">"
	etage = gets.chomp.to_i
	if !etage.even?
	puts "Voici la pyramide :"
	for c in 1..etage #c varie de 1-->etage
		if c > (etage/2) #quand on arrive avant le milieu on arrete 
			dep=c 
			break
		end
		j = 2*c-1 #pour que la pyramide soit symetrique il faut que les "#" soient impaire 
		diez = '#'*j #repete les "#" j fois
		espace = ' '*(etage-c) #repete les espaces "etage-c" fois
		puts  "#{espace}#{diez}" #affiche les espaces et les "#" 
	end
	d = dep #On reprend la pyramide a partir du milieu
	while d > 0 #tant que d est superieur ou egal a 1
		j = 2*d - 1
		diez = '#'*j
		espace = ' '*(etage-d)#repete les espaces "etage-d" fois		
		puts "#{espace}#{diez}"
		d -= 1 #decrementation de d
	end
	else
		puts "Pas de nombre paire s'il vous plait!"
	end

end

#Ceci est un petit plus de ma part.
puts "Quelle sorte de pyramide voulez-vous voir? \n 1.half_pyramid \n 2.full_pyramide \n 3.wtf_pyramide"
choix = gets.chomp.to_i
if choix == 1 
	half_pyramid 
elsif choix == 2
	full_pyramide 
elsif choix == 3
	wtf_pyramide 
else puts "Erreur, veuillez choisir un de ces chiffres!"
end


