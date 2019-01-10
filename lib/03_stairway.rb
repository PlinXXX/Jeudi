def lancer
	return rand(6)
end

puts "Welcome challenger, I'm sure you're ready to be in level 10 so...\n Let START"
puts "Press any key to Start"
gets
choix = ""
	niv = 0
	win = 0
	while niv != 10 do
		rep = nil
		puts " (Any key)Relancer \n (Q)Quitter \n"
		rep = gets.chomp.upcase
		system "clear"
		break if rep == 'Q'
		if lancer == 5 || lancer == 6
			puts "Vous avez avance d'une marche"
			niv += 1
		elsif lancer == 1 
			puts "Vous avez recule d'une marche"
			niv -= 1
		else
			puts "Vous n'avez pas bouger"
		end
	
		puts "Vous vous trouve au niveau #{niv}"
				m = 10
					for i in 1..10
						j = 2*i-1
						if i != m
							puts "#{' '*(10-i)}#{'#'*j}"
						else
							puts "#{' '*(10-i)}p#{'#'*j}"
						end
					end

		break if rep == 'Q'
		win += 1 if niv == 10
	end


	if win >= 1
		puts "Felicitaion! Vous avez Reussi!"
	else
		puts "Try again?"
	end
	
 