require_relative 'monster'

phpkachu = Monster.new('Phpkachu', 80, 50)
sqlrtle = Monster.new('Sqlrtle', 100, 20)
cppmander = Monster.new('Cppmander', 40, 80)
bashtoise = Monster.new('Bashtoise', 60, 60)
torterraform = Monster.new('Torterraform', 120, 10)

monsters = [phpkachu, sqlrtle, cppmander, bashtoise, torterraform]

player1 = [phpkachu, cppmander, torterraform]
player2 = [sqlrtle, cppmander.clone, bashtoise]

puts "Player 1:"
puts player1* ", "
puts ''
puts "Player 2:"
puts player2* ", "
puts ''

puts '=======================Turn 1======================='
puts ''

player1[0].attack1(player2[1])

puts ''
puts "Player 1:"
puts player1* ", "
puts ''
puts "Player 2:"
puts player2* ", "
puts ''

player2[0].attack2(player1[1])

puts ''
puts "Player 1:"
puts player1* ", "
puts ''
puts "Player 2:"
puts player2* ", "
puts ''