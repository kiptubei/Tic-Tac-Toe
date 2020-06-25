#!/usr/bin/env ruby
load 'game.rb'
move = Move.new
p 'Welcome to this nice Tic-tac-toe game'
p 'Enter player 1 name'
p1 = gets.chomp
one = Player.new(p1, 'X')
one.check

move.add_player(one)

p "Thank you for participating #{one.name}, you got X "
p 'Enter player 2 name'
p2 = gets.chomp
two = Player.new(p2, 'O')
move.add_player(two)

p "Thank you for participating #{two.name}, you got O "

move.find_players

# playing
puts "\nThis is the board \n"

puts " 1 | 2 | 3 | \n 4 | 5 | 6 | \n 7 | 8 | 9 |"

i = 1
while i <= 9
  if i.odd?
    p "It's #{p1} turn, please enter a digit between 1-9"
    x = gets.chomp
    move.add_move(one.name, x)
    p "your move is on slot #{x}"
  else
    p "It's #{p2} turn, please enter a digit between 1-9"
    o = gets.chomp
    p "your move is on slot #{o}"
    move.add_move(two.name, o)
  end
  i += 1
  move.find_players
end

p "Hooray!!! #{p1} is the winner"
p 'Thank you for playing the game!'
