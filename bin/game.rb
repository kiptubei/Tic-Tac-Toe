#!/usr/bin/env ruby
class Player
  attr_reader :name, :sym

  def initialize(name, sym)
    @name = name
    @sym = sym
  end

  def check
    puts name
  end
end

class Move
  @@move = {}
  @@count = 0
  @@emp_array = []
  # winning_ar = []
  #
  # def initialize; end

  def add_player(player)
    @@move[player.name] = []
  end

  def add_move(player, number)
    @@move[player] << number.to_i if @@move[player].size < 5
    @@count += 1
  end

  def find_players
    @@move.each_with_index { |item, _index| print "#{item} \n" }
  end

  def win_check(player)
    arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    if @@move[player].size >= 3
      true if arr.any? { |x| combination(x, @@move[player]) }
    end
  end

  def combination(ar, ar_played)
    sol_ar = ar.join.to_s
    puts sol_ar
    sol_ar_played = ar_played.join.to_s
    puts sol_ar_played
    if /[#{sol_ar}]{3}/.match(sol_ar_played)
      true
    else
      false
    end
  end

  def number_present(number)
    if @@emp_array.include?(number.to_i) || (!((number.to_i <= 9) && (number.to_i >= 1)))
      true
    else
      @@emp_array.push(number.to_i)
      false
  end
  end
end
