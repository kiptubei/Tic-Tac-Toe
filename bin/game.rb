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
  winning_ar = [][]

  def initialize(player)
    @@move.key = player
  end

  winning_ar = [[1, 2, 3][4, 5, 6][7, 8, 9][1, 4, 7][2, 5, 8][3, 6, 9][1, 5, 9][3, 5, 7]]

  def add_move(name, move)
    @@move[name] << move if @@move[name].size < 3
  end

  def check_win
    if @@move[name].size >= 3
      if winning_ar.any? { @move[name] }
        winner = name
        puts winner
      end
    end
  end
end
