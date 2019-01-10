# JEU VIDEO
def random # Définition de la méthode permettant le lancer le dés (chiffre aléatoir entre 1 et 6)
	des = rand (1..6)
	return des
end

def jeu # Définition de la méthode jeu
	marche = 0 # Début du jeu à la marche 0
	i = 1 # variable i permettant de compter le nombre de tour et de répéter les conditions

	while marche < 10
		des = random() # Lancemant du dés en appelant la méthode random tant que la marche 10 n'est pas atteinte

		if des == 5 || des == 6 # Première condition
			puts "Tours n°#{i}."
			puts "Tu as lancé le chiffre #{des}."
			puts "Tu montes donc d'une marche !"
			marche += 1 
			puts "Tu es sur la marche #{marche}"
			puts "\n"
			i += 1
		elsif des == 1 # Deuxième condition
			marche -= 1 # Le joueur descend d'une marche donc décrémentation de la variable marche
			if marche < 0 #/Pour ne pas avoir un chiffre en dessous de 0
				then marche = 0
			end
			puts "Tours n°#{i}."
			puts "Tu as lancé le chiffre #{des}."
			puts "Tu descends donc d'une marche !"
			puts "Tu es sur la marche #{marche}."
			puts "\n"
			i += 1
		else # Troisième condition : soit si le dés sort 2 3 ou 4(Chiffres restant)
			puts "Tours n°#{i}."
			puts "Tu as lancé le chiffre #{des}."
			puts "Tu restes donc à ta place !"
			marche = marche # Le joueur de change pas de marche
			puts "Tu es toujours sur la marche #{marche}."
			puts "\n"
			i += 1
		end
	end
	puts "Bravo tu es atteint les 10 marches ! You are a WINNER !!!"
end




# STATISTIQUES
def average_finish_time
	my_hash = [] # Définition d'un tableau vide
	100.times do jeu() # Faire tourner le jeu 100 fois
		my_hash << jeu() # Ajout de tous les tours dans mon tableau
	end

	# Calcul de la moyenne
	average = my_hash.sum / my_hash.size.to_f # On divise la somme des tours par la taille du tableau et to_f permet de faire le calcul sur un nombre décimal
	puts "Sur 100 parties, il faut faire en moyenne #{average} tours \npour arriver à la 10ème marche et gagner le jeu !"
end


def perform # Définition de la méthode perform qui va combiner toutes les méthodes définies précédemment
	des = random()
	jeu
	average_finish_time
end

perform # Appel de la méthode perform

			