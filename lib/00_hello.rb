def ask_first_name
  puts "Votre prénom s'il vous plait"
  first_name = gets.chomp
  return first_name
end

def say_hello(firstname)
  puts "Bonjour #{firstname}"
end

def affichage
  fname = ask_first_name
  say_hello(fname)
end
affichage
