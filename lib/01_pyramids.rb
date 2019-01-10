def choix
  puts "Si half pyramid, tapez 1 \n Si full pyramid, tapez 2 \n Si wtf pyramid, tapez 3"
  choix = gets.chomp.to_i
  while choix > 3
    puts "Choix de 1 à 3 svp"
    print ">"
    choix = gets.chomp.to_i
  end
  if choix == 1
    half_pyramid
  elsif choix == 2
    full_pyramid
  elsif choix == 3
    wtf_pyramid
  end
end

def half_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu entre 1 et 25? "
  print "-->"
  nombre = gets.chomp
  while nombre.to_i > 25
    puts "entre 1 et 25? "
    print "-->"
    nombre = gets.chomp
  end
    for i in (1..nombre.to_i)
      for j in (1..nombre.to_i-i)
        print " "
      end
      for k in (1..i)
        print "#"
      end
      puts ""
    end
end

def full_pyramid
  puts "Salut, bienvenue dans ma super full-pyramide ! Combien d'étages veux-tu entre 1 et 25? "
  print ">"
  nombre = gets.chomp
  nombre = nombre.to_i
  while nombre.to_i > 25
    puts "entre 1 et 25? "
    print ">"
    nombre = gets.chomp
    nombre = nombre.to_i
  end
  for i in (0..nombre - 1)
    print " " * (nombre - i)
    puts '#' * (2 * i + 1)
  end
end

def wtf_pyramid
  def wtf_pyramid
    puts "Salut, bienvenue au full PYRAMIDE ! Combien d'étages veux-tu ? "
    print "-->"

  nombre=gets.chomp.to_i
  while nombre.even?
    puts "Nombre impaire svp "
    print "-->"
    nombre = gets.chomp.to_i
  end
  nb = nombre/2
  g=0
  for i in (1..nb)
    print " " * nb
    puts "#" * (i+g)
    g+=1
    nb-=1
  end
  l=i+1
  k=0
  for nb in (nb..i)
    print " " * nb
    puts "#" * (i+l-k)
    k+=2
  end
  end
  wtf_pyramid
end
choix
