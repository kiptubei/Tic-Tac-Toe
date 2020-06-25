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
  # winning_ar = []
  #
  # def initialize; end

  def add_player(player)
    @@move[player.name] = []
  end

  def add_move(player, number)
    @@move[player] << number if @@move[player].size < 3
    @@count += 1
  end

  def find_players
    @@move.each_with_index { |item, _index| print "#{item} \n" }
  end
end
