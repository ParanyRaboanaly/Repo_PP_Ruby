puts"GAME GAME GAME"

@etageActuel=0
@compteurLancer=0

def resultat(resultD,position)

    if position!=10

      if resultD==5 || resultD==6
        @etageActuel=@etageActuel+1
        puts"Montée d'une étage : #{@etageActuel}"

      end

      if resultD==1
        @etageActuel=@etageActuel-1
        puts"Descente d'une étage : #{@etageActuel}"

      end

      if resultD==2 || resultD==3 || resultD==4
        puts"Stagne sur l'étage : #{@etageActuel}"

      end

    end

end

def saisieD
  #puts"Veuiller lancer vos dé et saisir le resultat ici"
  #pour saisie au clavier
  #d=gets.chomp
  d=Random.rand(1..6)
  @compteurLancer=@compteurLancer+1
  d=d.to_i
  puts"On a #{d}"

  return d
end

def traceur(position=@etageActuel)

  for i in 1..10
    if i==11-position
      puts"|<¤>"
    else
      puts"|--"
    end
  end

end


puts"Tapez ENTREE pour démarrer la simulation"
n=gets.chomp
def average_finish_time

tr=0
while tr<100
   @etageActuel=0
    while @etageActuel!=10

      resultat( saisieD,@etageActuel)
      #pour reperer graphiquement la position
      #traceur(@etageActuel)

        if @etageActuel<0
          @etageActuel=0
        end

        if @etageActuel==10
               puts "NIVEAU MAX ATTEINT. BRAVO!!"

        end

    end
tr=tr+1
end

end

average_finish_time
puts "Il faut en moyenne #{@compteurLancer/100} tours par partie"
