def half_pyramid #pyramide décalage à droite
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? " #Question pour utilisateur
	print " > " #affiche un chevron pour indiquer où l'utilisateur peut placer sa réponse

	nbre_etages = Integer(gets.chomp) #la variable récupère le nbre d'étage de l'utilisateur et la convertit 
	i=0 # def de i

	while (i < nbre_etages) #affiche la condition
		puts ("*" * i).rjust(nbre_etages) 
		i+=1
	end
end


def full_pyramid # pyramide de Gizeh
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? " #affiche le texte
	print " > " #affiche un chevron pour indiquer où l'utilisateur peut placer sa réponse

	nbre_etages = gets.chomp.to_i #la variable récupère le nbre d'étage de l'utilisateur et la convertit 
	i = 0
		
	while (i < nbre_etages)

		print " " * (nbre_etages - i)		
        puts "*" * (2 * i + 1)
		i+=1

	end
end



def wtf_pyramid


end

def perform
	half_pyramid
	full_pyramid
end

perform