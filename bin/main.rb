#!/usr/bin/env ruby
p 'Welcome to this nice Tic-tac-toe game'
p 'Enter player 1 name'
p1 = gets.chomp

p "Thank you for participating #{p1}, you got X "
p 'Enter player 2 name'
p2 = gets.chomp

p "Thank you for participating #{p2}, you got O "

# playing
puts "This is the board \n"
board = " 1 | 2 | 3 | \n 4 | 5 | 6 | \n 7 | 8 | 9 |"
puts board

i = 1

while i < 9
  if i.odd?
    p "It's #{p1} turn, please enter a digit between 1-9"
    x = gets.chomp
    unless (x.to_i <= 9) && (x.to_i >= 1)
      puts 'Wrong value ,Please Enter value between 1 - 9'
      x = gets.chomp
    end
    board = board.gsub!(x, 'X')
  else
    p "It's #{p2} turn, please enter a digit between 1-9"
    o = gets.chomp
    unless (o.to_i <= 9) && (o.to_i >= 1)
      puts 'Wrong value ,Please Enter value between 1 - 9'
      o = gets.chomp
    end
    board = board.gsub!(o, 'O')
  end
  puts board
  i += 1
end

p "Hooray!!! #{p1} is the winner"
p 'Thank you for playing the game!'
